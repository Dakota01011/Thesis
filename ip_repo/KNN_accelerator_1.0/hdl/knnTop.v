// Dakota Koelling
// (* mark_debug = "true" *)
module knnTop #(
	parameter dataWidth = 32,
	parameter numberOfDimensions = 32
) (
(* mark_debug = "true" *)	input 					clk,
(* mark_debug = "true" *)	input 					rd_clk,
(* mark_debug = "true" *)	input 					reset,
(* mark_debug = "true" *)	input 					done,
(* mark_debug = "true" *)	input [31:0] 			k,
(* mark_debug = "true" *)	input 					start,
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
		.clk(clk),
		.rst(reset),
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
		.clk(clk),
		.reset(reset),
		.dataIn_Valid(dataValid),
		.done(done),
		.data1(currentRefPoint),
		.data2(currentDataPoint),
		.distance(distance),
		.distanceValid(distanceValid)
	);

	kSorting #(
		.dataWidth(dataWidth)
	) sort (
		.clk(clk),
		.rd_clk(rd_clk),
		.reset(reset),
		.valid(distanceValid),
		.done(done),
		.k(k),
		.dataValueIn(distance),
		.dataNameOut(dataNameOut),
		.dataValueOut(dataValueOut)
	);

endmodule
