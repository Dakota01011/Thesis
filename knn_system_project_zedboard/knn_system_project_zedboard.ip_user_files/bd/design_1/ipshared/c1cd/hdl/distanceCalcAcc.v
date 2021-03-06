`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Dakota Koelling
// Engineer: Dakota Koelling
// 
// Create Date: 04/20/2016 09:50:48 AM
// Design Name: Distance Calculator
// Module Name: distanceCalculationAccumulator
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

module distanceCalculationAccumulator #(
	parameter DATA_WIDTH = 32,
	parameter DIMENSIONS = 32,
	parameter VAL_WIDTH = 32
) (
	input clk,
	input reset,
	input wr_en,
	input dataIn_Valid,
	input done, 
	input signed [DATA_WIDTH-1:0] data1,
	input signed [DATA_WIDTH-1:0] data2,
	output reg [VAL_WIDTH-1:0] distance,
	output reg distanceValid
);

localparam dif_width = DATA_WIDTH+1;
localparam sqr_width = dif_width*2;
localparam acc_width = sqr_width+DIMENSIONS;

	reg [dif_width-1:0] difference;
	reg [sqr_width-1:0] squared;
	reg [acc_width-1:0] accumulator;
	reg diff_stage_valid;
	reg sqr_stage_valid;
	reg acc_stage_valid;
	integer i;

	always @(posedge clk)
	begin : proc_datapath
		if (reset)
		begin
			difference <= 0;
			squared <= 0;
			accumulator <= 0;
			distance <= 0;
		end
		else if (wr_en)
		begin
			if(data1 > data2)
			begin
				difference <= data1 - data2;
			end
			else
			begin
				difference <= data2 - data1;
			end
			squared <= difference * difference;
			if (sqr_stage_valid | acc_stage_valid)
			begin
				if (i >= DIMENSIONS-1)
				begin
					accumulator <= squared;
					distance <= accumulator;
				end
				else
				begin
					accumulator <= accumulator + squared;
				end
			end
		end
	end

	always @(posedge clk)
	begin : proc_controlpath
		if (reset)
		begin
			diff_stage_valid <= 1'b0;
			sqr_stage_valid <= 1'b0;
			acc_stage_valid <= 1'b0;
			i <= -1;
			distanceValid <= 0;
		end
		else if (wr_en)
		begin
			diff_stage_valid <= dataIn_Valid;
			sqr_stage_valid <= diff_stage_valid;
			acc_stage_valid <= sqr_stage_valid;
			if (sqr_stage_valid | acc_stage_valid)
			begin
				if (i >= DIMENSIONS-1)
				begin
					i <= 0;
					distanceValid <= 1;
				end
				else
				begin
					i <= i + 1;
					distanceValid <= 0;
				end
			end
			else
			begin
				distanceValid <= 0;
			end
		end
	end

endmodule
