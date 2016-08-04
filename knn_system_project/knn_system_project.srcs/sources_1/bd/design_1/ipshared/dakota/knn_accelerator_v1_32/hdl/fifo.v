//Dakota Koelling

module fifo #(
	parameter NUM_DIMENSIONS = 32,
	parameter DATA_WIDTH = 32
) (
	input 					clk,
	input 					rst,
	input 					wr_en,
	input 					start,
	input [DATA_WIDTH-1:0] 	dataIn,
	output [DATA_WIDTH-1:0] currentRefPoint,
	output [DATA_WIDTH-1:0] currentDataPoint,
	output reg				dataOut_Valid
);

	reg [DATA_WIDTH-1:0] mem [NUM_DIMENSIONS-1:0];
(* mark_debug = "true" *)	reg firstTime;
(* mark_debug = "true" *)	integer counter;
	integer i;

	always @(posedge clk)
	begin : proc_mem
		if(rst) begin
			for (i = 0; i < NUM_DIMENSIONS; i = i + 1)
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
			counter <= -1; // account for delay between rise of start and dataIn being ready
			firstTime <= 1;
			dataOut_Valid <= 0;
		end
		else
		begin
			if(wr_en && start)
			begin
				if(counter < NUM_DIMENSIONS-1)
				begin
					counter <= counter + 1;
				end
				else
				begin
					counter <= 0;
					firstTime <= 0;
					dataOut_Valid <= 1;
				end
			end
		end
	end

	assign currentRefPoint = mem[counter];
	assign currentDataPoint = dataIn;

endmodule