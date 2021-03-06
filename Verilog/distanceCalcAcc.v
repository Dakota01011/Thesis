// Dakota Koelling

module distanceCalculationAccumulator #(
	parameter dataWidth = 32,
	parameter numberOfDimensions = 32
) (
	input clk,
	input reset,
	input wr_en,
	input dataIn_Valid,
	input done, 
	input [dataWidth-1:0] data1,
	input [dataWidth-1:0] data2,
	output reg [dataWidth-1:0] distance,
	output reg distanceValid
);

(* mark_debug = "true" *)	reg [dataWidth-1:0] difference;
(* mark_debug = "true" *)	reg [dataWidth-1:0] squared;
(* mark_debug = "true" *)	reg [dataWidth-1:0] accumulator;
(* mark_debug = "true" *)	reg stop;
(* mark_debug = "true" *)	integer i;

	always @(posedge clk)
	begin : proc_stop
		if(reset)
		begin
			stop <= 0;
		end
		else
		begin
			if(wr_en && done && distanceValid)
			begin
				// distanceValid can go high once after done then it will stop
				stop <= 1;
			end
		end
	end

	always @(posedge clk)
	begin
		if (reset || stop)
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
			if(wr_en && dataIn_Valid)
			begin
				difference <= data1 - data2;
				squared <= difference * difference;
				if (i >= numberOfDimensions-1)
				begin
					accumulator <= squared;
					i <= 0;
					distanceValid <= 1;
					distance <= accumulator;
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
