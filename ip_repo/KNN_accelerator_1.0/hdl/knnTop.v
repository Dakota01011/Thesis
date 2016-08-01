// Dakota Koelling

module knnTop #(
	parameter dataWidth = 32,
	parameter numberOfDimensions = 32
) (
(* mark_debug = "true" *)	input 					clk,
(* mark_debug = "true" *)	input 					reset,
(* mark_debug = "true" *)	input 					done,
(* mark_debug = "true" *)	input [31:0] 			k,
(* mark_debug = "true" *)	input [dataWidth-1:0] 	refDataIn,
(* mark_debug = "true" *)	input 					loadRef,
(* mark_debug = "true" *)	input [31:0] 			dataNameIn,
(* mark_debug = "true" *)	input [dataWidth-1:0] 	dataValueIn,
(* mark_debug = "true" *)	output [31:0] 			dataNameOut,
(* mark_debug = "true" *)	output [dataWidth-1:0] 	dataValueOut,
							
							// scope debug
							output					clk_out,
							output					reset_out,
							output					done_out,
							output [31:0] 			k_out,
							output [dataWidth-1:0] 	refDataIn_out,
							output					loadRef_out,
							output [31:0] 			dataNameIn_out,
							output [dataWidth-1:0] 	dataValueIn_out
);

	wire [dataWidth-1:0] distance;
	wire [dataWidth-1:0] currentRefPoint;
	reg [dataWidth-1:0] currentDataPoint;
	reg dataIn_Valid;
	integer i;

	// debug AXI on scope
	assign clk_out = clk;
	assign reset_out = reset;
	assign done_out = done;
	assign k_out = k;
	assign refDataIn_out = refDataIn;
	assign loadRef_out = loadRef;
	assign dataNameIn_out = dataNameIn;
	assign dataValueIn_out = dataValueIn;

	always @(posedge clk)
	begin
		currentDataPoint <= dataValueIn;
	end

	always @(negedge clk or posedge reset)
	begin : proc_dataIn_Valid
		if(reset || i >= numberOfDimensions)
		begin
			dataIn_Valid <= 0;
			i <= 0;
		end
		else
		begin
			dataIn_Valid <= 1;
			i <= i + 1;
		end
	end

	fifo #(
		.NUM_DIMENSIONS(numberOfDimensions),
		.DATA_WIDTH(dataWidth)
	) fifo (
		.clk(clk),
		.rst(reset),
		.load(loadRef),
		.dataIn_Valid(dataIn_Valid),
		.dataIn(refDataIn),
		.dataOut(currentRefPoint)
	);
	
	distanceCalculationAccumulator #(
		.dataWidth(dataWidth),
		.numberOfDimensions(numberOfDimensions)
	) dist(
		.clk(clk),
		.reset(reset),
		.dataIn_Valid(dataIn_Valid),
		.data1(currentRefPoint),
		.data2(currentDataPoint),
		.distance(distance),
		.distanceValid(valid)
	);

	kSorting #(
		.dataWidth(dataWidth),
		.pass_thoo_debug(1)
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
