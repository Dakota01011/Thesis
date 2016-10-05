`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Dakota Koelling
// Engineer: Dakota Koelling
// 
// Create Date: 09/14/2016 12:50:48 PM
// Design Name: Sorting Top
// Module Name: kSortingTop
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

// Sorting Top

module kSortingTop #(
	parameter DATA_WIDTH = 32,
	parameter DIMENSIONS = 32,
	parameter VAL_WIDTH = 32,
	parameter NUM_CH = 1,
	parameter PASS_THOO_DEBUG = 0,
	parameter K = 1
) (
	input clk,
	input reset,
	input wr_en,
	input [NUM_CH-1:0] valid,
	input done,
	input [31:0] second_start_index,
	input [(NUM_CH*VAL_WIDTH)-1:0] dataValueIn,
(* mark_debug = "true" *)	output AXIS_out_wr_en,
(* mark_debug = "true" *)	output [31:0] dataNameOut,
(* mark_debug = "true" *)	output [DATA_WIDTH-1:0] dataValueOut
);

	wire transferDone;
	wire [31:0] dataNameP1 [NUM_CH-1:0];
	wire [VAL_WIDTH-1:0] dataValueP1 [NUM_CH-1:0];
	reg [31:0] dataNameP1Reg;
	reg [VAL_WIDTH-1:0] dataValueP1Reg;
	reg validP2;
	reg validP2Reg;
	reg [7:0] channelSelect; // [$clog2(NUM_CH)-1:0]
	reg [NUM_CH-1:0] channelOutEnable;
	reg finalOutEnable;
	reg finalOutEnableReg;
	reg [9:0] wr_en_dly;
	integer transferCounter;

	generate
		genvar channel;
		for (channel = 0; channel < NUM_CH; channel = channel + 1)
		begin:Phase1Gen
			kSortingP1 #(
				.DATA_WIDTH(DATA_WIDTH),
				.DIMENSIONS(DIMENSIONS),
				.VAL_WIDTH(VAL_WIDTH),
				.NUM_CH(NUM_CH),
				.INSTANCE(channel),
				.PASS_THOO_DEBUG(PASS_THOO_DEBUG),
				.K(K)
			) P1 (
				.clk(clk),
				.reset(reset),
				.valid(valid[channel]),
				.done(done),
				.outEn(channelOutEnable[channel]),
				.start_index(second_start_index),
				.dataValueIn(dataValueIn[((channel)*VAL_WIDTH) +: VAL_WIDTH]),
				.dataNameOut(dataNameP1[channel]),
				.dataValueOut(dataValueP1[channel])
			);
		end
	endgenerate
	
	kSortingP2 #(
		.DATA_WIDTH(DATA_WIDTH),
		.DIMENSIONS(DIMENSIONS),
		.VAL_WIDTH(VAL_WIDTH),
		.PASS_THOO_DEBUG(PASS_THOO_DEBUG),
		.K(K)
	) P2 (
		.clk(clk),
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

	always @(posedge clk)
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
			wr_en_dly <= {wr_en_dly[8:0], wr_en};
			dataNameP1Reg <= dataNameP1[channelSelect];
			dataValueP1Reg <= dataValueP1[channelSelect];
			validP2Reg <= validP2;
			finalOutEnableReg <= finalOutEnable;
		end
	end

	// Need to add state machine to update channelSelect and channelOutEnable after 10ish low wr_en and done
	// finalOutEnable high after transfer complete
	always @(posedge clk)
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

	assign AXIS_out_wr_en = finalOutEnableReg & ~transferDone;

endmodule
