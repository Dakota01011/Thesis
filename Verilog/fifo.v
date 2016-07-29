//Dakota Koelling

module fifo #(
	parameter NUM_DIMENSIONS = 32,
	parameter DATA_WIDTH = 32
) (
	input clk,
	input rst,
	input load,
	input [DATA_WIDTH-1:0] dataIn,
	output [DATA_WIDTH-1:0] dataOut
);

	reg [DATA_WIDTH-1:0] mem [NUM_DIMENSIONS-1:0];
	integer counter;

	always @(posedge clk or posedge rst)
	begin : proc_mem
		if(rst) begin
			for (int i = 0; i < NUM_DIMENSIONS; i = i + 1)
			begin
				mem[i] <= 0;
			end
		end
		else
		begin
			if(load)
			begin
				mem[counter] <= dataIn;
			end
		end
	end

	always @(posedge clk or posedge rst)
	begin : proc_counter
		if(rst)
		begin
			counter <= 0;
		end
		else
		begin
			if(counter >= NUM_DIMENSIONS-1)
			begin
				counter <= 0;
			end
			else
			begin
				counter <= counter + 1;
			end
		end
	end

	assign dataOut = mem[counter];

endmodule