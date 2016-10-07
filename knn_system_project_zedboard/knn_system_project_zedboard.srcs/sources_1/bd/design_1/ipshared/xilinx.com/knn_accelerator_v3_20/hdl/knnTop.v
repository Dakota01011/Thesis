`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Dakota Koelling
// Engineer: Dakota Koelling
// 
// Create Date: 04/20/2016 09:50:48 AM
// Design Name: KNN Top
// Module Name: knnTop
// Project Name: KNN Hardware Accelerator
// Target Devices: Zedboard, Zybo
// Tool Versions: Vivado 2016.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

// (* mark_debug = "true" *)
module knnTop #(
	parameter DATA_WIDTH = 32,
	parameter DIMENSIONS = 32,
	parameter DEBUG = 0,
	parameter NUM_CH = 1,
	parameter K = 1
) (
	input 							mclk,
	input 							reset,
	input 							done,
	input 							AXIS0_in_wr_en,
	input 							AXIS1_in_wr_en,
	input [31:0]					second_start_index,
	input [63:0] 					dataValueIn0,
	input [63:0] 					dataValueIn1,
	output 							AXIS_out_wr_en,
	output [31:0] 					dataNameOut,
	output [DATA_WIDTH-1:0] 		dataValueOut
);

	localparam VAL_WIDTH = 2*(DATA_WIDTH+1)+DIMENSIONS;

	wire [31:0] dataNameP1 [NUM_CH-1:0];
	wire [VAL_WIDTH-1:0] dataValueP1 [NUM_CH-1:0];
	reg [31:0] dataNameP1Reg;
	reg [VAL_WIDTH-1:0] dataValueP1Reg;
	reg [NUM_CH-1:0] channelOutEnable;
	wire transferDone;
	wire AXIS_in_wr_en;
	reg validP2;
	reg validP2Reg;
	reg [1:0] channelSelect; // [$clog2(NUM_CH)-1:0]
	reg finalOutEnable;
	reg finalOutEnableReg;
	reg [9:0] wr_en_dly;
	integer transferCounter;

	generate
		genvar channel;
		for (channel = 0; channel < NUM_CH; channel = channel + 1)
		begin:fifo_distance_gen
			wire wr_en;
			wire [127:0] dataConcat;
			wire [31:0] dataValueIn;

			assign wr_en = channel < 2 ? AXIS0_in_wr_en : AXIS1_in_wr_en;
			assign dataConcat = {dataValueIn1, dataValueIn0};
			assign dataValueIn = dataConcat[((channel)*DATA_WIDTH) +: DATA_WIDTH];

			knnPipe #(
				.DATA_WIDTH(DATA_WIDTH),
				.DIMENSIONS(DIMENSIONS),
				.INSTANCE(channel),
				.DEBUG(DEBUG),
				.K(K)
			) pipe (
				.mclk(mclk),
				.reset(reset),
				.done(done),
				.AXIS_in_wr_en(wr_en),
				.start_index(start_index),
				.dataValueIn(dataValueIn),
				.outEn(channelOutEnable[channel]),
				.dataNameOut(dataNameP1[channel]),
				.dataValueOut(dataValueP1[channel])
			);
		end
	endgenerate

	kSortingP2 #(
		.DATA_WIDTH(DATA_WIDTH),
		.DIMENSIONS(DIMENSIONS),
		.VAL_WIDTH(VAL_WIDTH),
		.PASS_THOO_DEBUG(DEBUG),
		.K(K)
	) P2 (
		.clk(mclk),
		.reset(reset),
		.valid(validP2Reg),
		.done(done),
		.outEn(finalOutEnableReg),
		.dataNameIn(dataNameP1Reg),
		.dataValueIn(dataValueP1Reg),
		.transferDone(transferDone),
		.dataNameOut(dataNameOut),
		.dataValueOut(dataValueOut)
	);

	always @(posedge mclk)
	begin
		// Write enable delay to clear pipe
		if (reset)
		begin
			wr_en_dly <= 10'd0;
			dataNameP1Reg <= 0;
			dataValueP1Reg <= 0;
			validP2Reg <= 0;
			finalOutEnableReg <= 0;
		end
		else
		begin
			wr_en_dly <= {wr_en_dly[8:0], AXIS_in_wr_en};
			dataNameP1Reg <= dataNameP1[channelSelect];
			dataValueP1Reg <= dataValueP1[channelSelect];
			validP2Reg <= validP2;
			finalOutEnableReg <= finalOutEnable;
		end
	end

	// Need to add state machine to update channelSelect and channelOutEnable after 10ish low AXIS_in_wr_en and done
	// finalOutEnable high after transfer complete
	always @(posedge mclk)
	begin
		// Switching stuff
		if (reset)
		begin
			transferCounter <= 0;
			channelSelect <= 8'd0;
			channelOutEnable <= {NUM_CH{1'b0}};
			finalOutEnable <= 1'b0;
			validP2 <= 1'b0;
		end
		else if (done && (wr_en_dly == 0))
		begin
			if (finalOutEnable)
			begin
				validP2 <= 1'b0;
			end
			else if (~validP2)
			begin
				validP2 <= 1'b1;
				channelOutEnable <= 1;
			end
			else
			begin
				if (channelOutEnable == 0)
				begin
					finalOutEnable <= 1'b1;
					validP2 <= 1'b0;
				end
				else if (transferCounter < K-1)
				begin
					transferCounter <= transferCounter + 1;
				end
				else
				begin
					transferCounter <= 0;
					channelSelect <= channelSelect + 1;
					channelOutEnable = channelOutEnable << 1;
					if (channelOutEnable == 0)
					begin
						finalOutEnable <= 1'b1;
						validP2 <= 1'b0;
					end
				end
			end
		end
	end

	assign AXIS_in_wr_en = AXIS0_in_wr_en | AXIS1_in_wr_en;
	assign AXIS_out_wr_en = finalOutEnableReg & ~transferDone;

endmodule
