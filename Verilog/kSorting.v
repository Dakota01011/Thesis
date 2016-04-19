// Dakota Koelling

module kSorting(clk, reset, valid, k, dataNameIn, dataValueIn, dataNameOut, dataValueOut);

	parameter dataWidth = 32;
	parameter maxMemory = 1024;

	input clk;
	input reset;
	input valid;
	input [31:0] k;
	input [31:0] dataNameIn;
	input [dataWidth-1:0] dataValueIn;
	output reg [31:0] dataNameOut;
	output reg [dataWidth-1:0] dataValueOut;

	reg [dataWidth-1:0] nameMem [maxMemory-1:0];
	reg [dataWidth-1:0] valueMem [maxMemory-1:0];

	generate
		genvar i;
		for (i = 0; i < maxMemory; i = i + 1)
		begin:comparator
			always @(posedge clk)
			begin
				if (reset)
				begin
					nameMem[i] <= dataWidth'hFFFFFFFF; //all 1s
					valueMem[i] <= dataWidth'hFFFFFFFF; //all 1s
				end
				else if (valid)
				begin
					nameMem[i] <= ;
					valueMem[i] <= ;
				end
			end
		end
	endgenerate

endmodule
