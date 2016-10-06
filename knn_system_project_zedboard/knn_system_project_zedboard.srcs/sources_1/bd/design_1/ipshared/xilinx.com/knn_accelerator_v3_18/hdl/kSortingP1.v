`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Dakota Koelling
// Engineer: Dakota Koelling
// 
// Create Date: 09/14/2016 12:50:48 PM
// Design Name: Sorting Phase 1
// Module Name: kSortingP1
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

// Phase 1 Sorting

module kSortingP1 #(
	parameter DATA_WIDTH = 32,
	parameter DIMENSIONS = 32,
	parameter VAL_WIDTH = 32,
	parameter NUM_CH = 1,
	parameter INSTANCE = 0,
	parameter PASS_THOO_DEBUG = 0,
	parameter K = 1
) (
	input clk,
	input reset,
	input valid,
	input done,
	input outEn,
	input [31:0] start_index,
	input [VAL_WIDTH-1:0] dataValueIn,
	output [31:0] dataNameOut,
	output [VAL_WIDTH-1:0] dataValueOut
);

(* mark_debug = "true" *)	reg [DATA_WIDTH-1:0] nameMem [K-1:0];
(* mark_debug = "true" *)	reg [VAL_WIDTH-1:0] valueMem [K-1:0];
	wire [K-1:0] comparator;
	reg [31:0] outputPointer;
	reg [31:0] entryId;

	generate
		genvar i;
		for (i = K-1; i >= 0; i = i - 1)
		begin:memory
			if (i > 0)
			begin
				always @(posedge clk)
				begin
					if (reset)
					begin
						nameMem[i] <= 32'hFFFFFFFF; //all 1s
						valueMem[i] <= {VAL_WIDTH{1'b1}}; //all 1s
					end
					else if (valid & comparator[i] & comparator[i-1]) // shift
					begin
						nameMem[i] <= nameMem[i-1];
						valueMem[i] <= valueMem[i-1];
					end
					else if (valid & comparator[i] & ~comparator[i-1]) // put new
					begin
						nameMem[i] <= entryId;
						valueMem[i] <= dataValueIn;
					end
				end
			end
			else if (i <= 0)
			begin
				always @(posedge clk)
				begin
					if (reset)
					begin
						nameMem[i] <= 32'hFFFFFFFF; //all 1s
						valueMem[i] <= {VAL_WIDTH{1'b1}}; //all 1s
					end
					else if (valid & comparator[i])
					begin
						nameMem[i] <= entryId;
						valueMem[i] <= dataValueIn;
					end
				end
			end
			
		end
	endgenerate

	// Comparators
	generate
		genvar j;
		for (j = 0; j < K; j = j + 1)
		begin:comparing
			assign comparator[j] = valueMem[j] >= dataValueIn ? 1 : 0;
		end
	endgenerate


	always @(posedge clk)
	begin
		//Outputing stuff
		if (reset)
		begin
			outputPointer <= 0;
		end
		else if (done && outEn && outputPointer < K-1)
		begin
			outputPointer <= outputPointer + 1;
		end
	end

	always @(posedge clk)
	begin
		// internal ID tag generation
		if (reset)
		begin
			case(INSTANCE)
				0: entryId <= 0;
				1: entryId <= 1;
				2: entryId <= start_index;
				3: entryId <= start_index + 1;
				default: entryId <= 0;
			endcase
		end
		else if (valid)
		begin
			entryId <= entryId + 2;
		end
	end

	// Debug junk
	generate
		if(PASS_THOO_DEBUG)
		begin
			assign dataNameOut = entryId;
			assign dataValueOut = dataValueIn;
		end
		else
		begin
			assign dataNameOut = nameMem[outputPointer];
			assign dataValueOut = valueMem[outputPointer];
		end
	endgenerate

endmodule
