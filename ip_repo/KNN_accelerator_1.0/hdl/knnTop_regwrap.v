module knnTop_regwrap #(
	parameter dataWidth = 32,
	parameter numberOfDimensions = 32
) (
	input 					clk,
	input 					rd_clk,
	input 					reset,
	input 					done,
	input [31:0] 			k,
	input 					start,
	input [dataWidth-1:0] 	dataValueIn,
	output [31:0] 			dataNameOut,
	output [dataWidth-1:0] 	dataValueOut
);
	
	reg 				clk_reg;
	reg 				rd_clk_reg;
	reg 				reset_reg;
	reg 				done_reg;
	reg [31:0] 			k_reg;
	reg 				start_reg;
	reg [dataWidth-1:0] dataValueIn_reg;

	always @(posedge clk)
	begin
		reset_reg <= reset;
		rd_clk_reg <= rd_clk;
		done_reg <= done;
		k_reg <= k;
		start_reg <= start;
		dataValueIn_reg <= dataValueIn;
	end

	knnTop #(
		.dataWidth(32),
		.numberOfDimensions(5)
	) top (
		.clk 			(clk),
		.rd_clk 		(rd_clk_reg),
		.reset 			(reset_reg),
		.done 			(done_reg),
		.k 				(k_reg),
		.start 			(start_reg),
		.dataValueIn 	(dataValueIn_reg),
		.dataNameOut 	(dataNameOut),
		.dataValueOut 	(dataValueOut)
	);

endmodule // knnTop