`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Dakota Koelling
// Engineer: Dakota Koelling
// 
// Create Date: 10/06/2016 06:05:39 PM
// Design Name: KNN Pipe
// Module Name: knnPipe
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

module knnPipe #(
	parameter DATA_WIDTH = 32,
	parameter DIMENSIONS = 32,
	parameter INSTANCE = 0,
	parameter DEBUG = 0,
	parameter K = 1
) (
	input 							mclk,
	input 							reset,
	input 							done,
	input 							AXIS_in_wr_en,
	input [31:0]					start_index,
	input [DATA_WIDTH-1:0] 			dataValueIn,
	input 							outEn,
	output [31:0] 					dataNameOut,
	output [VAL_WIDTH-1:0] 			dataValueOut
);

	localparam VAL_WIDTH = 2*(DATA_WIDTH+1)+DIMENSIONS;

	wire [DATA_WIDTH-1:0] 	currentRefPoint;
	wire [DATA_WIDTH-1:0] 	currentDataPoint;
	wire 					dataValid;
	wire 					distanceValid;
	wire [VAL_WIDTH-1:0] 	distance;

	fifo #(
		.DIMENSIONS(DIMENSIONS),
		.DATA_WIDTH(DATA_WIDTH)
	) fifo (
		.clk(mclk),
		.rst(reset),
		.wr_en(AXIS_in_wr_en),
		.start(~reset),
		.dataIn(dataValueIn),
		.currentRefPoint(currentRefPoint),
		.currentDataPoint(currentDataPoint),
		.dataOut_Valid(dataValid)
	);

	distanceCalculationAccumulator #(
		.DATA_WIDTH(DATA_WIDTH),
		.DIMENSIONS(DIMENSIONS),
		.VAL_WIDTH(VAL_WIDTH)
	) dist(
		.clk(mclk),
		.reset(reset),
		.wr_en(AXIS_in_wr_en),
		.dataIn_Valid(dataValid),
		.done(done),
		.data1(currentRefPoint),
		.data2(currentDataPoint),
		.distance(distance),
		.distanceValid(distanceValid)
	);

	kSortingP1 #(
		.DATA_WIDTH(DATA_WIDTH),
		.DIMENSIONS(DIMENSIONS),
		.VAL_WIDTH(VAL_WIDTH),
		.INSTANCE(INSTANCE),
		.PASS_THOO_DEBUG(DEBUG),
		.K(K)
	) P1 (
		.clk(mclk),
		.reset(reset),
		.valid(distanceValid),
		.done(done),
		.outEn(outEn),
		.start_index(start_index),
		.dataValueIn(distance),
		.dataNameOut(dataNameOut),
		.dataValueOut(dataValueOut)
	);

endmodule
