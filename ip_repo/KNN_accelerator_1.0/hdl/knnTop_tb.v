`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
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
	reg done;
	reg loadRef;
	reg [31:0] k;
	reg [31:0] refDataIn;
	reg [31:0] dataNameIn;
	reg [31:0] dataValueIn;
	wire [31:0] dataNameOut;
	wire [31:0] dataValueOut;

	knnTop #(
		.dataWidth(32),
		.numberOfDimensions(5)
	) uut (
		.clk 			(clk),
		.reset 			(reset),
		.done 			(done),
		.k 				(k),
		.refDataIn 		(refDataIn),
		.loadRef 		(loadRef),
		.dataNameIn 	(dataNameIn),
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
		loadRef = 0;
		k = 0;
		refDataIn = 0;
		dataNameIn = 0;
		dataValueIn = 0;
		#90;
		reset = 0;
		#20;
		k = 3;
		#20;
		loadRef = 1;
		#20;
		refDataIn = 1;
		#20;
		refDataIn = 2;
		#20;
		refDataIn = 2;
		#20;
		refDataIn = 2;
		#20;
		refDataIn = 3;
		#20;
		refDataIn = 0;
		#20;
		loadRef = 0;
		#20;
		dataValueIn = 5;
		#20;
		dataValueIn = 10;
		#20;
		dataValueIn = 7;
		#20;
		dataValueIn = 9;
		#20;
		dataValueIn = 6;
		#20;
		dataNameIn = 0;
		#20;
		dataValueIn = 1;
		#20;
		dataValueIn = 1;
		#20;
		dataValueIn = 1;
		#20;
		dataValueIn = 1;
		#20;
		dataValueIn = 1;
		#20;
		dataNameIn =1;
		#20;
		dataValueIn = 2;
		#20;
		dataValueIn = 2;
		#20;
		dataValueIn = 2;
		#20;
		dataValueIn = 2;
		#20;
		dataValueIn = 2;
		#20;
		dataNameIn = 2;
		#20;
		dataValueIn = 2;
		#20;
		dataValueIn = 2;
		#20;
		dataValueIn = 2;
		#20;
		dataValueIn = 2;
		#20;
		dataValueIn = 2;
		#20;
		dataNameIn = 3;
		#20;
		dataValueIn = 5;
		#20;
		dataValueIn = 5;
		#20;
		dataValueIn = 5;
		#20;
		dataValueIn = 5;
		#20;
		dataValueIn = 5;
		#20;
		dataNameIn = 4;
		#20;
		done = 1;
	end

endmodule
