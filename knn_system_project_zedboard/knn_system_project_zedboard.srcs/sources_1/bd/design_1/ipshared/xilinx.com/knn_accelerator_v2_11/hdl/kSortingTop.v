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
	parameter MAX_MEMORY = 20, //64
	parameter PASS_THOO_DEBUG = 0
) (
	input clk,
	input reset,
	input wr_en,
	input rd_en,
	input [NUM_CH-1:0] valid,
	input done,
	input [31:0] k,
	input [(NUM_CH*VAL_WIDTH)-1:0] dataValueIn,
	output [31:0] dataNameOut,
	output [DATA_WIDTH-1:0] dataValueOut
);

(* mark_debug = "true" *)	wire [31:0] dataNameP1 [NUM_CH-1:0];
(* mark_debug = "true" *)	wire [VAL_WIDTH-1:0] dataValueP1 [NUM_CH-1:0];
(* mark_debug = "true" *)	reg validP2;
(* mark_debug = "true" *)	reg [7:0] channelSelect; // [$clog2(NUM_CH)-1:0]
(* mark_debug = "true" *)	reg [NUM_CH-1:0] channelOutEnable;
(* mark_debug = "true" *)	reg finalOutEnable;
(* mark_debug = "true" *)	reg [9:0] wr_en_dly;
(* mark_debug = "true" *)	integer transferCounter;

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
				.MAX_MEMORY(MAX_MEMORY),
				.PASS_THOO_DEBUG(PASS_THOO_DEBUG)
			) P1 (
				.clk(clk),
				.reset(reset),
				.rd_en(rd_en),
				.valid(valid[channel]),
				.done(done),
				.outEn(channelOutEnable[channel]),
				.k(k),
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
		.MAX_MEMORY(MAX_MEMORY),
		.PASS_THOO_DEBUG(PASS_THOO_DEBUG)
	) P2 (
		.clk(clk),
		.reset(reset),
		.rd_en(rd_en),
		.valid(validP2),
		.done(done),
		.outEn(finalOutEnable),
		.k(k),
		.dataNameIn(dataNameP1[channelSelect]),
		.dataValueIn(dataValueP1[channelSelect]),
		.dataNameOut(dataNameOut),
		.dataValueOut(dataValueOut)
	);

	always @(posedge clk)
	begin
		// Write enable delay to clear pipe
		if (reset)
		begin
			wr_en_dly <= 10'd0;
		end
		else
		begin
			wr_en_dly <= {wr_en_dly[8:0], wr_en};
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
		else if (done && (wr_en_dly == wr_en_dly))
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
				end
				else if (transferCounter < k)
				begin
					transferCounter <= transferCounter + 1;
				end
				else
				begin
					transferCounter <= 0;
					channelSelect <= channelSelect + 1;
					channelOutEnable <= channelOutEnable << 1;
				end
			end
		end
	end

endmodule
