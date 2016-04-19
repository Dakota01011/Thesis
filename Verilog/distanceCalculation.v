`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Dakota Koelling
// 
// Create Date: 04/13/2016 11:03:05 PM
// Design Name: Distance Calculation
// Module Name: distanceCalculation
// Project Name: 
// Target Devices: ZedBoard
// Tool Versions: 2016.1
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module distanceCalculation(clk, reset, dataPoint1In, shift1En, dataPoint2In, shift2En, distance);
	
	parameter dataWidth = 32;
	parameter numberDimensions = 32;

	input clk;
	input reset;
	input [dataWidth-1:0] dataPoint1In;
	input shift1En;
	input [dataWidth-1:0] dataPoint2In;
	input shift2En;
	output reg [dataWidth-1:0] distance;
	
	reg [dataWidth-1:0] dataPoint1Buffer [numberDimensions-1:0];
	reg [dataWidth-1:0] dataPoint2Buffer [numberDimensions-1:0];
	reg [dataWidth-1:0] difference [numberDimensions-1:0];
	reg [2*dataWidth-1:0] squared [numberDimensions-1:0];
	reg [2*dataWidth-1:0] addition;

	integer k;
	integer l;
	integer m;

	always @(posedge clk)
	begin
		if (shift1En)
		begin
			for(l = 0; l < numberDimensions-1; l = l + 1)
			begin
				dataPoint1Buffer[l] = dataPoint1Buffer[l+1];
			end
			dataPoint1Buffer[numberDimensions-1] = dataPoint1In;
		end
	end

	always @(posedge clk)
	begin
		if (shift2En)
		begin
			for(m = 0; m < numberDimensions-1; m = m + 1)
			begin
				dataPoint2Buffer[m] = dataPoint2Buffer[m+1];
			end
			dataPoint2Buffer[numberDimensions-1] = dataPoint2In;
		end
	end

	generate
		genvar i;
		for (i = 0; i < numberDimensions; i = i + 1)
		begin:differences
			always @(posedge clk)
			begin
				if (reset)
				begin
					// reset
					difference[i] <= 0;
				end
				else
				begin
					difference[i] <= dataPoint1Buffer[i] - dataPoint2Buffer[i];
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
				if (reset)
				begin
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
		if (reset)
		begin
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
		if (reset)
		begin
			// reset
			distance <= 0;
		end
		else
		begin
			distance <= addition; //Need sqrt(addition)
		end
	end
	
endmodule
