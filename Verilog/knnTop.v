// Dakota Koelling

module knnTop(clk, reset, done, k, refDataIn, loadRef, dataNameIn, dataValueIn, dataNameOut, dataValueOut);

	parameter dataWidth = 32;
	parameter numberOfDimensions = 32;

	input clk;
	input reset;
	input done;
	input [31:0] k;
	input [dataWidth-1:0] refDataIn;
	input loadRef;
	input [31:0] dataNameIn;
	input [dataWidth-1:0] dataValueIn;
	output [31:0] dataNameOut;
	output [dataWidth-1:0] dataValueOut;

	wire [dataWidth-1:0] distance;
	reg [dataWidth-1:0] currentRefPoint;
	reg [dataWidth-1:0] currentDataPoint;
	wire [dataWidth-1:0] FIFOout;

	always @(posedge clk)
	begin
		currentDataPoint <= dataValueIn;
		if (loadRef)
		begin
			currentRefPoint <= refDataIn;
		end
		else
		begin
			currentRefPoint <= FIFOout;
		end
	end

	kSorting #(
		.dataWidth(dataWidth)
	) sort(
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
	
	distanceCalculationAccumulator #(
		.dataWidth(dataWidth),
		.numberOfDimensions(numberOfDimensions)
	) dist(
		.clk(clk),
		.reset(reset),
		.data1(currentRefPoint),
		.data2(currentDataPoint),
		.distance(distance)
	);

	// FIFO_SYNC_MACRO: Synchronous First-In, First-Out (FIfor) RAM Buffer
	// 7 Series
	// Xilinx HDL Libraries Guide, version 14.7
	/////////////////////////////////////////////////////////////////
	// DATA_WIDTH | FIFO_SIZE | FIfor Depth | RDCOUNT/WRCOUNT Width //
	// ===========|===========|============|=======================//
	// 		37-72 |    "36Kb" |        512 | 9-bit //
	// 		19-36 |    "36Kb" |       1024 | 10-bit //
	// 		19-36 |    "18Kb" |        512 | 9-bit //
	// 		10-18 |    "36Kb" |       2048 | 11-bit //
	// 		10-18 |    "18Kb" |       1024 | 10-bit //
	// 		  5-9 |    "36Kb" |       4096 | 12-bit //
	// 		  5-9 |    "18Kb" |       2048 | 11-bit //
	// 		  1-4 |    "36Kb" |       8192 | 13-bit //
	// 		  1-4 |    "18Kb" |       4096 | 12-bit //
	/////////////////////////////////////////////////////////////////
	FIFO_SYNC_MACRO #(
		.DEVICE("7SERIES"), // Target Device: "VIRTEX5", "VIRTEX6", "7SERIES"
		.ALMOST_EMPTY_OFFSET(numberOfDimensions), // Sets the almost empty threshold
		.ALMOST_FULL_OFFSET(9'h100), // Sets almost full threshold
		.DATA_WIDTH(dataWidth), // Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
		.DO_REG(0), // Optional output register (0 or 1)
		.FIFO_SIZE ("36Kb") // Target BRAM: "18Kb" or "36Kb"
	) FIFO_SYNC_MACRO_inst (
		.ALMOSTEMPTY(ALMOSTEMPTY), // 1-bit output almost empty
		.ALMOSTFULL(), // 1-bit output almost full
		.DO(FIFOout), // Output data, width defined by DATA_WIDTH parameter
		.EMPTY(), // 1-bit output empty
		.FULL(), // 1-bit output full
		.RDCOUNT(), // Output read count, width determined by FIfor depth
		.RDERR(), // 1-bit output read error
		.WRCOUNT(), // Output write count, width determined by FIfor depth
		.WRERR(), // 1-bit output write error
		.CLK(clk), // 1-bit input clock
		.DI(currentRefPoint), // Input data, width defined by DATA_WIDTH parameter
		.RDEN(~ALMOSTEMPTY), // 1-bit input read enable
		.RST(reset), // 1-bit input reset
		.WREN(1'b1) // 1-bit input write enable
	);
	// End of FIFO_SYNC_MACRO_inst instantiation

endmodule
