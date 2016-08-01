//Dakota Koelling

module fifo #(
	parameter NUM_DIMENSIONS = 32,
	parameter DATA_WIDTH = 32
) (
	input clk,
	input rst,
	input load,
	input dataIn_Valid,
	input [DATA_WIDTH-1:0] dataIn,
	output [DATA_WIDTH-1:0] dataOut
);

	reg [DATA_WIDTH-1:0] mem [NUM_DIMENSIONS-1:0];
	reg prev_load;
	integer counter;
	integer i;

	always @(posedge clk or posedge rst)
	begin : proc_mem
		if(rst) begin
			prev_load <= 0;
			for (i = 0; i < NUM_DIMENSIONS; i = i + 1)
			begin
				mem[i] <= 0;
			end
		end
		else
		begin
			prev_load <= load;
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
			if(dataIn_Valid)
			begin
				if(counter >= NUM_DIMENSIONS-1 || (prev_load && ~load))
				begin
					counter <= 0;
				end
				else
				begin
					counter <= counter + 1;
				end
			end
		end
	end

	assign dataOut = mem[counter];

endmodule