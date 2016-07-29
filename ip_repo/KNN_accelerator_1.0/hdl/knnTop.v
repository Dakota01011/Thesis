// Dakota Koelling

module knnTop #(
	parameter dataWidth = 32,
	parameter numberOfDimensions = 32
	) (
	input 					clk,
	input 					reset,
	input 					done,
	input [31:0] 			k,
	input [dataWidth-1:0] 	refDataIn,
	input 					loadRef,
	input [31:0] 			dataNameIn,
	input [dataWidth-1:0] 	dataValueIn,
	output [31:0] 			dataNameOut,
	output [dataWidth-1:0] 	dataValueOut
	);

	wire [dataWidth-1:0] distance;
	wire [dataWidth-1:0] currentRefPoint;
	reg [dataWidth-1:0] currentDataPoint;

	always @(posedge clk)
	begin
		currentDataPoint <= dataValueIn;
	end

	fifo #(
		.NUM_DIMENSIONS(numberOfDimensions),
		.DATA_WIDTH(dataWidth)
	) fifo (
		.clk(clk),
		.rst(reset),
		.load(loadRef),
		.dataIn(refDataIn),
		.dataOut(currentRefPoint)
	);
	
	distanceCalculationAccumulator #(
		.dataWidth(dataWidth),
		.numberOfDimensions(numberOfDimensions)
	) dist(
		.clk(clk),
		.reset(reset),
		.data1(currentRefPoint),
		.data2(currentDataPoint),
		.distance(distance),
		.distanceValid(valid)
	);

	kSorting #(
		.dataWidth(dataWidth)
	) sort (
		.clk(clk),
		.reset(reset),
		.valid(valid),
		.done(done),
		.k(k),
		.dataNameIn(dataNameIn),
		.dataValueIn(distance),
		.dataNameOut(dataNameOut),
		.dataValueOut(dataValueOut)
	);

endmodule
