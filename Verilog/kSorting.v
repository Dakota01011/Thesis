// Dakota Koelling

module kSorting(clk, reset, valid, done, k, dataNameIn, dataValueIn, dataNameOut, dataValueOut);

	parameter dataWidth = 32;
	parameter maxMemory = 128;

	input clk;
	input reset;
	input valid;
	input done;
	input [31:0] k;
	input [31:0] dataNameIn;
	input [dataWidth-1:0] dataValueIn;
	output [31:0] dataNameOut;
	output [dataWidth-1:0] dataValueOut;

	reg [dataWidth-1:0] nameMem [maxMemory-1:0];
	reg [dataWidth-1:0] valueMem [maxMemory-1:0];
	wire [maxMemory-1:0] comparator;
	reg [31:0] kMem;
	reg [31:0] outputPointer;

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
					else if (valid & comparator[i] & comparator[i-1]) // shift
					begin
						nameMem[i] <= nameMem[i-1];
						valueMem[i] <= valueMem[i-1];
					end
					else if (valid & comparator[i] & ~comparator[i-1]) // put new
					begin
						nameMem[i] <= dataNameIn;
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
					else if (valid & comparator[i])
					begin
						nameMem[i] <= dataNameIn;
						valueMem[i] <= dataValueIn;
					end
				end
			end
			
		end
	endgenerate

	generate
		genvar j;
		for (j = 0; j < maxMemory; j = j + 1)
		begin:comparing
			assign comparator[j] = valueMem[j] >= dataValueIn ? 1 : 0;
		end
	endgenerate

	always @(posedge clk)
	begin
		if (reset)
		begin
			outputPointer <= 0;
		end
		else if (done & outputPointer < k)
		begin
			outputPointer <= outputPointer + 1;
		end
	end

	assign dataNameOut = nameMem[outputPointer];
	assign dataValueOut = valueMem[outputPointer];

endmodule
