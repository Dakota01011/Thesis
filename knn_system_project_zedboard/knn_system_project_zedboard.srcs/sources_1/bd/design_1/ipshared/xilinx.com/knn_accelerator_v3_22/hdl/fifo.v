`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Dakota Koelling
// Engineer: Dakota Koelling
// 
// Create Date: 04/20/2016 09:50:48 AM
// Design Name: FIFO
// Module Name: fifo
// Project Name: KNN Hardware Accelerator
// Target Devices: Zedboard, Zybo
// Tool Versions: Vivado 2016.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module fifo #(
	parameter DATA_WIDTH = 32,
	parameter DIMENSIONS = 32
) (
	input 					clk,
	input 					rst,
	input 					wr_en,
	input 					start,
	input [DATA_WIDTH-1:0] 	dataIn,
	output reg [DATA_WIDTH-1:0] currentRefPoint,
	output reg [DATA_WIDTH-1:0] currentDataPoint,
	output reg					dataOut_Valid
);

	reg [DATA_WIDTH-1:0] mem [DIMENSIONS-1:0];
	reg firstTime;
	integer counter;
	integer i;

	always @(posedge clk)
	begin : proc_mem
		if(rst) begin
			for (i = 0; i < DIMENSIONS; i = i + 1)
			begin
				mem[i] <= 0;
			end
		end
		else
		begin
			if(wr_en && start && firstTime)
			begin
				mem[counter] <= dataIn;
			end
		end
	end

	always @(posedge clk)
	begin : proc_counter
		if(rst)
		begin
			counter <= 0;
			firstTime <= 1;
		end
		else
		begin
			if(wr_en && start)
			begin
				if(counter < DIMENSIONS-1)
				begin
					counter <= counter + 1;
				end
				else
				begin
					counter <= 0;
					firstTime <= 0;
				end
			end
		end
	end

	always @(posedge clk)
	begin : proc_output_reg
		if(rst)
		begin
			dataOut_Valid <= 0;
			currentRefPoint <= 0;
			currentDataPoint <= 0;
		end
		else
		begin
			dataOut_Valid <= (wr_en && start && ~firstTime);
			currentRefPoint <= mem[counter];
			currentDataPoint <= dataIn;
		end
	end

endmodule