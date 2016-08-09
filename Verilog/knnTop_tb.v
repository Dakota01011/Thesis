`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Dakota Koelling
// Engineer: Dakota Koelling
// 
// Create Date: 07/29/2016 09:50:48 AM
// Design Name: 
// Module Name: knnTop_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
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

	reg clk;
	reg reset;
	reg wr_en;
	reg rd_en;
	reg start;
	reg done;
	reg [31:0] k;
	reg [31:0] dataValueIn;
	wire [31:0] dataNameOut;
	wire [31:0] dataValueOut;

	knnTop_regwrap #(
		.dataWidth(32),
		.numberOfDimensions(5)
	) uut (
		.clk 			(clk),
		.reset 			(reset),
		.wr_en 			(wr_en),
		.rd_en 			(rd_en),
		.start 			(start),
		.done 			(done),
		.k 				(k),
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
		start = 0;
		k = 0;
		dataValueIn = 0;
		wr_en = 1;
		rd_en = 0;
		#90;
		reset = 0;
		#20;
		k = 3;
		#20;
		start = 1;
		#20;
		dataValueIn = 1; // ref start
		#20;
		dataValueIn = 2;
		#20;
		dataValueIn = 2;
		#20;
		dataValueIn = 2;
		#20;
		dataValueIn = 3; // ref end
		#20;
		dataValueIn = 5; // start 1
		#20;
		dataValueIn = 10;
		#20;
		dataValueIn = 7;
		#20;
		dataValueIn = 9;
		#20;
		dataValueIn = 6; // end 1
		#20;
		dataValueIn = 1; //start 2
		#20;
		dataValueIn = 1;
		#20;
		dataValueIn = 1;
		#20;
		dataValueIn = 1;
		#20;
		dataValueIn = 1; // end 2
		#20;
		dataValueIn = 2; // start 3
		#20;
		dataValueIn = 2;
		#20;
		dataValueIn = 2;
		#20;
		dataValueIn = 2;
		#20;
		dataValueIn = 2; //end 3
		#20;
		dataValueIn = 2; // start 4
		#20;
		dataValueIn = 2;
		#20;
		dataValueIn = 2;
		#20;
		dataValueIn = 2;
		#20;
		dataValueIn = 2; // end 4
		#20;
		dataValueIn = 5; // start 5
		#20;
		dataValueIn = 5;
		#20;
		dataValueIn = 5;
		#20;
		dataValueIn = 5;
		#20;
		dataValueIn = 5; // end 5
		#20;
		done = 1;
		#200;
		wr_en = 0;
		rd_en = 1;
	end

endmodule
