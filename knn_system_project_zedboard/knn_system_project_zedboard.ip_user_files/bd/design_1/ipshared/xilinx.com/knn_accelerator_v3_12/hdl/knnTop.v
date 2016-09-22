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
(* mark_debug = "true" *)	input 							mclk,
(* mark_debug = "true" *)	input 							reset,
(* mark_debug = "true" *)	input 							wr_en,
(* mark_debug = "true" *)	input 							start,
(* mark_debug = "true" *)	input 							done,
(* mark_debug = "true" *)	input [(NUM_CH*DATA_WIDTH)-1:0] dataValueIn,
(* mark_debug = "true" *)	output 							AXIS_out_wr_en,
(* mark_debug = "true" *)	output [31:0] 					dataNameOut,
(* mark_debug = "true" *)	output [DATA_WIDTH-1:0] 		dataValueOut
);

	localparam VAL_WIDTH = 2*(DATA_WIDTH+1)+DIMENSIONS;

(* mark_debug = "true" *)	wire [DATA_WIDTH-1:0] currentRefPoint;
(* mark_debug = "true" *)	wire [NUM_CH-1:0] distanceValid;
(* mark_debug = "true" *)	wire [(NUM_CH*VAL_WIDTH)-1:0] distance;

	generate
		genvar channel;
		for (channel = 0; channel < NUM_CH; channel = channel + 1)
		begin:fifo_distance_gen
		(* mark_debug = "true" *)	wire dataValid;
			wire [DATA_WIDTH-1:0] currentRefPoint_int; // internal ref point
		(* mark_debug = "true" *)	wire [DATA_WIDTH-1:0] currentDataPoint;

			if (channel == 0)
			begin
				assign currentRefPoint = currentRefPoint_int; // using same ref for all so only connect internal 0
			end

			fifo #(
				.DIMENSIONS(DIMENSIONS),
				.DATA_WIDTH(DATA_WIDTH)
			) fifo (
				.clk(mclk),
				.rst(reset),
				.wr_en(wr_en),
				.start(start),
				.dataIn(dataValueIn[((channel)*DATA_WIDTH) +: DATA_WIDTH]),
				.currentRefPoint(currentRefPoint_int),
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
				.wr_en(wr_en),
				.dataIn_Valid(dataValid),
				.done(done),
				.data1(currentRefPoint),
				.data2(currentDataPoint),
				.distance(distance[((channel)*VAL_WIDTH) +: VAL_WIDTH]),
				.distanceValid(distanceValid[channel])
			);
		end
	endgenerate

	kSortingTop #(
		.DATA_WIDTH(DATA_WIDTH),
		.DIMENSIONS(DIMENSIONS),
		.VAL_WIDTH(VAL_WIDTH),
		.NUM_CH(NUM_CH),
		.PASS_THOO_DEBUG(DEBUG),
		.K(K)
	) sort (
		.clk(mclk),
		.reset(reset),
		.wr_en(wr_en),
		.valid(distanceValid),
		.done(done),
		.dataValueIn(distance),
		.AXIS_out_wr_en(AXIS_out_wr_en),
		.dataNameOut(dataNameOut),
		.dataValueOut(dataValueOut)
	);

endmodule
