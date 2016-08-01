// Dakota Koelling

module distanceCalculationAccumulator #(
	parameter dataWidth = 32,
	parameter numberOfDimensions = 32
) (
	input clk,
	input reset,
	input dataIn_Valid,
	input [dataWidth-1:0] data1,
	input [dataWidth-1:0] data2,
	output reg [dataWidth-1:0] distance,
	output reg distanceValid
);

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
			distanceValid <= 0;
			distance <= 0;
		end
		else 
		begin
			if(dataIn_Valid)
			begin
				difference <= data1 - data2;
				squared <= difference * difference;
				if (i >= numberOfDimensions)
				begin
					accumulator <= 0;
					i <= 0;
					distanceValid <= 1;
					distance <= accumulator + squared;
				end
				else
				begin
					accumulator <= accumulator + squared;
					i <= i + 1;
					distanceValid <= 0;
				end
			end
		end
	end

endmodule
