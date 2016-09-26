`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Dakota Koelling
// Engineer: Dakota Koelling
// 
// Create Date: 07/29/2016 09:50:48 AM
// Design Name: KNN Top Testbench
// Module Name: knnTop_tb
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


module knnTop_tb();
	
	parameter width = 32;
	parameter dim = 5;
	parameter ch = 2;
	parameter k = 3;

	reg clk;
	reg reset;
	reg wr_en;
	reg done;
	reg [(ch*32)-1:0] dataValueIn;
	wire [31:0] dataNameOut;
	wire [31:0] dataValueOut;

	knnTop_regwrap #(
		.dataWidth(width),
		.numberOfDimensions(dim),
		.numberOfChannels(ch),
		.k(k)
	) uut (
		.clk 			(clk),
		.reset 			(reset),
		.wr_en 			(wr_en),
		.done 			(done),
		.dataValueIn 	(dataValueIn),
		.dataNameOut 	(dataNameOut),
		.dataValueOut 	(dataValueOut)
	);

	initial
	begin
		clk = 0;
		forever begin
			#10 clk = ~clk;
		end
	end

	initial
	begin
		reset = 1;
		done = 0;
		dataValueIn = 0;
		wr_en = 0;
		#90;
		reset = 0;
		#20;
		wr_en = 1;
		dataValueIn = {32'd0, 32'd1}; // ref start
		#20;
		dataValueIn = {32'd0, 32'd2};
		#20;
		dataValueIn = {32'd0, 32'd2};
		#20;
		dataValueIn = {32'd0, 32'd2};
		#20;
		dataValueIn = {32'd0, 32'd3}; // ref end
		#20;
		dataValueIn = {32'd1, 32'd5}; // start 2,1
		#20;
		dataValueIn = {32'd1, 32'd10};
		#20;
		dataValueIn = {32'd1, 32'd7};
		#20;
		dataValueIn = {32'd1, 32'd9};
		#20;
		dataValueIn = {32'd1, 32'd6}; // end 2,1
		#20;
		dataValueIn = {32'd2, 32'd2}; // start 4,3
		#20;
		dataValueIn = {32'd2, 32'd2};
		#20;
		wr_en = 0;
		#2000;
		wr_en = 1;
		dataValueIn = {32'd2, 32'd2};
		#20;
		dataValueIn = {32'd2, 32'd2};
		#20;
		dataValueIn = {32'd2, 32'd2}; // end 4,3
		#20;
		dataValueIn = {32'd0, 32'd5}; // start X,5
		#20;
		dataValueIn = {32'd0, 32'd5};
		#20;
		dataValueIn = {32'd0, 32'd5};
		#20;
		dataValueIn = {32'd0, 32'd5};
		#20;
		dataValueIn = {32'd0, 32'd5}; // end X,5
		#20;
		wr_en = 0;
		#200;
		done = 1;
		#200;
	end

endmodule
