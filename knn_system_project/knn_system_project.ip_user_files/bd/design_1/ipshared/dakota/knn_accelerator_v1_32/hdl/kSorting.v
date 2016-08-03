// Dakota Koelling

module kSorting #(
	parameter dataWidth = 32,
	parameter maxMemory = 128,
	parameter pass_thoo_debug = 0
) (
	input clk,
	input reset,
	input wr_en,
	input rd_en,
	input valid,
	input done,
	input [31:0] k,
	input [dataWidth-1:0] dataValueIn,
	output [31:0] dataNameOut,
	output [dataWidth-1:0] dataValueOut
);

	reg [dataWidth-1:0] nameMem [maxMemory-1:0];
	reg [dataWidth-1:0] valueMem [maxMemory-1:0];
	wire [maxMemory-1:0] comparator;
	reg [31:0] outputPointer;
	reg [31:0] entryId;

	generate
		genvar i;
		for (i = maxMemory-1; i >= 0; i = i - 1)
		begin:memory
			if (i > 0)
			begin
				always @(posedge clk)
				begin
					if (reset)
					begin
						nameMem[i] <= 32'hFFFFFFFF; //all 1s
						valueMem[i] <= 32'hFFFFFFFF; //all 1s
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
						valueMem[i] <= 32'hFFFFFFFF; //all 1s
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
		for (j = 0; j < maxMemory; j = j + 1)
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
		end
		else if (rd_en && outputPointer < k-1)
		begin
			outputPointer <= outputPointer + 1;
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
		if(pass_thoo_debug)
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
