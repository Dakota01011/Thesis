// Dakota Koelling

module distanceCalculationAccumulator(clk, reset, data1, data2, numberOfDimensions, distance);

	parameter dataWidth = 32;

	input clk;
	input reset;
	input [dataWidth-1:0] data1;
	input [dataWidth-1:0] data2;
	input numberOfDimensions;
	output reg [dataWidth-1:0] distance;

	reg [dataWidth-1:0] difference;
	reg [dataWidth-1:0] squared;
	reg [dataWidth-1:0] accumulator;
	integer i;

	always @(posedge clk)
	begin
		if (reset)
		begin
			difference <= 0;
			squared <= 0;
			accumulator <= 0;
			i <= -3;
		end
		else if (i >= numberOfDimensions)
		begin
			difference <= data1 - data2;
			squared <= difference * difference;
			accumulator <= 0;
			difference <= accumulator + squared;
			i <= 0;
		end
		else
		begin
			difference <= data1 - data2;
			squared <= difference * difference;
			accumulator <= accumulator + squared;
			i <= i + 1;
		end
	end

endmodule
