// Dakota Koelling

module distanceCalculation(clk, reset, dataPoint1, dataPoint2, distance);

	parameter dataWidth = 32;
	parameter numberDimensions = 32;

	input clk;
	input reset;
	input [dataWidth-1:0] dataPoint1 [numberDimensions-1:0];
	input [dataWidth-1:0] dataPoint2 [numberDimensions-1:0];
	output reg [dataWidth-1:0] distance;
	
	reg [dataWidth-1:0] difference [numberDimensions-1:0];
	reg [2*dataWidth-1:0] squared [numberDimensions-1:0];
	reg [2*dataWidth-1:0] addition;

	integer k;

	generate
		genvar i;
		for (i = 0; i < numberDimensions; i = i + 1)
		begin:differences
			always @(posedge clk)
			begin
				if (rst) begin
					// reset
					difference[i] <= 0;
				end
				else
				begin
					difference[i] <= dataPoint1[i] - dataPoint2[i];
				end
			end
		end
	endgenerate

	generate
		genvar j;
		for (j = 0; j < numberDimensions; j = j + 1)
		begin:squareds
			always @(posedge clk)
			begin
				if (rst) begin
					// reset
					squared[j] <= 0;
				end
				else
				begin
					squared[j] <= difference[j] * difference[j];
				end
			end
		end
	endgenerate

	always @(posedge clk)
	begin
		if (rst) begin
			// reset
			addition = 0;
		end
		else
		begin
			addition = 0;
			for(k = 0; k < numberDimensions; k = k + 1)
			addition = addition + squared[k];
		end
	end

	always @(posedge clk)
	begin
		if (rst) begin
			// reset
			distance <= 0;
		end
		else
		begin
			distance <= addition; //Need sqrt(addition)
		end
	end

endmodule