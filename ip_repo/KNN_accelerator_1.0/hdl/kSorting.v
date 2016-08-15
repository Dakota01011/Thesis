// Dakota Koelling

module kSorting #(
	parameter DATA_WIDTH = 32,
	parameter DIMENSIONS = 32,
	parameter VAL_WIDTH = 32,
	parameter MAX_MEMORY = 64,
	parameter PASS_THOO_DEBUG = 0
) (
	input clk,
	input reset,
	input wr_en,
	input rd_en,
	input valid,
	input done,
	input [31:0] k,
	input [VAL_WIDTH-1:0] dataValueIn,
	output [31:0] dataNameOut,
	output [DATA_WIDTH-1:0] dataValueOut
);

	reg [DATA_WIDTH-1:0] nameMem [MAX_MEMORY-1:0];
	reg [VAL_WIDTH-1:0] valueMem [MAX_MEMORY-1:0];
	wire [MAX_MEMORY-1:0] comparator;
(* mark_debug = "true" *)	reg [31:0] outputPointer;
(* mark_debug = "true" *)	reg [31:0] entryId;
(* mark_debug = "true" *)	reg changeOutputPointer;

	generate
		genvar i;
		for (i = MAX_MEMORY-1; i >= 0; i = i - 1)
		begin:memory
			if (i > 0)
			begin
				always @(posedge clk)
				begin
					if (reset)
					begin
						nameMem[i] <= 32'hFFFFFFFF; //all 1s
						valueMem[i] <= {VAL_WIDTH{1'b1}}; //all 1s
					end
					else if (wr_en && valid & comparator[i] & comparator[i-1]) // shift
					begin
						nameMem[i] <= nameMem[i-1];
						valueMem[i] <= valueMem[i-1];
					end
					else if (wr_en && valid & comparator[i] & ~comparator[i-1]) // put new
					begin
						nameMem[i] <= entryId;
						valueMem[i] <= dataValueIn;
					end
				end
			end
			else if (i <= 0)
			begin
				always @(posedge clk)
				begin
					if (reset)
					begin
						nameMem[i] <= 32'hFFFFFFFF; //all 1s
						valueMem[i] <= {VAL_WIDTH{1'b1}}; //all 1s
					end
					else if (wr_en && valid & comparator[i])
					begin
						nameMem[i] <= entryId;
						valueMem[i] <= dataValueIn;
					end
				end
			end
			
		end
	endgenerate

	// Comparators
	generate
		genvar j;
		for (j = 0; j < MAX_MEMORY; j = j + 1)
		begin:comparing
			assign comparator[j] = valueMem[j] >= dataValueIn ? 1 : 0;
		end
	endgenerate


	always @(posedge clk)
	begin
		//Outputing stuff
		if (reset)
		begin
			outputPointer <= 0;
			changeOutputPointer <= 0;
		end
		else if (rd_en && done)
		begin
			if (outputPointer < k-1 && changeOutputPointer)
			begin
				outputPointer <= outputPointer + 1;
				changeOutputPointer <= 0;
			end
			else
			begin
				changeOutputPointer <= 1;
			end
		end
	end

	always @(posedge clk)
	begin
		// internal ID tag generation
		if (reset)
		begin
			entryId <= 0;
		end
		else if (wr_en && valid)
		begin
			entryId <= entryId + 1;
		end
	end

	// Debug junk
	generate
		if(PASS_THOO_DEBUG)
		begin
			assign dataNameOut = entryId;
			assign dataValueOut = dataValueIn;
		end
		else
		begin
			assign dataNameOut = nameMem[outputPointer];
			assign dataValueOut = valueMem[outputPointer];
		end
	endgenerate

endmodule
