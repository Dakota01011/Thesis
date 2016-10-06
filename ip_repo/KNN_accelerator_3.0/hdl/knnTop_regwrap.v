`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Dakota Koelling
// Engineer: Dakota Koelling
// 
// Create Date: 07/29/2016 09:50:48 AM
// Design Name: KNN Top Register Wrapper
// Module Name: knnTop_regwrap
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

module knnTop_regwrap #(
	parameter dataWidth = 32,
	parameter numberOfDimensions = 32,
	parameter numberOfChannels = 1,
	parameter k = 1
) (
	input 					clk,
	input 					reset,
	input 					wr_en,
	input 					done,
	input [(numberOfChannels*dataWidth)-1:0] 	dataValueIn,
	output                  AXIS_out_wr_en,
	output [31:0] 			dataNameOut,
	output [dataWidth-1:0] 	dataValueOut
);
	
	reg 				reset_reg;
	reg 				AXIS_in_wr_en_reg;
	reg 				done_reg;
	reg [(numberOfChannels*dataWidth)-1:0] dataValueIn_reg;

	always @(posedge clk)
	begin
		reset_reg <= reset;
		AXIS_in_wr_en_reg <= wr_en;
		done_reg <= done;
		dataValueIn_reg <= dataValueIn;
	end

	knnTop #(
		.DATA_WIDTH(dataWidth),
		.DIMENSIONS(numberOfDimensions),
		.NUM_CH(numberOfChannels),
		.K(k)
	) top (
		.mclk 			(clk),
		.reset 			(reset_reg),
		.AXIS_in_wr_en	(AXIS_in_wr_en_reg),
		.done 			(done_reg),
		.dataValueIn 	(dataValueIn_reg),
		.AXIS_out_wr_en (AXIS_out_wr_en),
		.dataNameOut 	(dataNameOut),
		.dataValueOut 	(dataValueOut)
	);

endmodule // knnTop