// Dakota Koelling
// (* mark_debug = "true" *)
module knnTop #(
	parameter DATA_WIDTH = 32,
	parameter DIMENSIONS = 32,
	parameter DEBUG = 0
) (
(* mark_debug = "true" *)	input 					mclk,
(* mark_debug = "true" *)	input 					reset,
(* mark_debug = "true" *)	input 					wr_en,
(* mark_debug = "true" *)	input 					rd_en,
(* mark_debug = "true" *)	input 					start,
(* mark_debug = "true" *)	input 					done,
(* mark_debug = "true" *)	input [31:0] 			k,
(* mark_debug = "true" *)	input [DATA_WIDTH-1:0] 	dataValueIn,
(* mark_debug = "true" *)	output [31:0] 			dataNameOut,
(* mark_debug = "true" *)	output [DATA_WIDTH-1:0] dataValueOut
);

localparam VAL_WIDTH = 2*(DATA_WIDTH+1)+DIMENSIONS;
	
(* mark_debug = "true" *)	wire dataValid;
(* mark_debug = "true" *)	wire distanceValid;
(* mark_debug = "true" *)	wire [VAL_WIDTH-1:0] distance;
(* mark_debug = "true" *)	wire [DATA_WIDTH-1:0] currentRefPoint;
(* mark_debug = "true" *)	wire [DATA_WIDTH-1:0] currentDataPoint;

	fifo #(
		.DIMENSIONS(DIMENSIONS),
		.DATA_WIDTH(DATA_WIDTH)
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
		.distance(distance),
		.distanceValid(distanceValid)
	);

	kSorting #(
		.DATA_WIDTH(DATA_WIDTH),
		.DIMENSIONS(DIMENSIONS),
		.VAL_WIDTH(VAL_WIDTH),
		.PASS_THOO_DEBUG(DEBUG)
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
