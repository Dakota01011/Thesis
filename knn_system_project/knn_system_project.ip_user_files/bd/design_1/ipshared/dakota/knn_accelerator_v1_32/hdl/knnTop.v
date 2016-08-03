// Dakota Koelling
// (* mark_debug = "true" *)
module knnTop #(
	parameter dataWidth = 32,
	parameter numberOfDimensions = 32,
	parameter debug = 0
) (
(* mark_debug = "true" *)	input 					mclk,
(* mark_debug = "true" *)	input 					reset,
(* mark_debug = "true" *)	input 					wr_en,
(* mark_debug = "true" *)	input 					rd_en,
(* mark_debug = "true" *)	input 					start,
(* mark_debug = "true" *)	input 					done,
(* mark_debug = "true" *)	input [31:0] 			k,
(* mark_debug = "true" *)	input [dataWidth-1:0] 	dataValueIn,
(* mark_debug = "true" *)	output [31:0] 			dataNameOut,
(* mark_debug = "true" *)	output [dataWidth-1:0] 	dataValueOut
);
	
	wire dataValid;
	wire distanceValid;
	wire [dataWidth-1:0] distance;
	wire [dataWidth-1:0] currentRefPoint;
	wire [dataWidth-1:0] currentDataPoint;

	fifo #(
		.NUM_DIMENSIONS(numberOfDimensions),
		.DATA_WIDTH(dataWidth)
	) fifo (
		.clk(mclk),
		.rst(reset),
		.wr_en(wr_en),
		.start(start),
		.dataIn(dataValueIn),
		.currentRefPoint(currentRefPoint),
		.currentDataPoint(currentDataPoint),
		.dataOut_Valid(dataValid)
	);
	
	distanceCalculationAccumulator #(
		.dataWidth(dataWidth),
		.numberOfDimensions(numberOfDimensions)
	) dist(
		.clk(mclk),
		.reset(reset),
		.wr_en(wr_en),
		.dataIn_Valid(dataValid),
		.done(done),
		.data1(currentRefPoint),
		.data2(currentDataPoint),
		.distance(distance),
		.distanceValid(distanceValid)
	);

	kSorting #(
		.dataWidth(dataWidth),
		.pass_thoo_debug(debug)
	) sort (
		.clk(mclk),
		.reset(reset),
		.wr_en(wr_en),
		.rd_en(rd_en),
		.valid(distanceValid),
		.done(done),
		.k(k),
		.dataValueIn(distance),
		.dataNameOut(dataNameOut),
		.dataValueOut(dataValueOut)
	);

endmodule
