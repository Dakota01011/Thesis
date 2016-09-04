module knnTop_regwrap #(
	parameter dataWidth = 32,
	parameter numberOfDimensions = 32
) (
	input 					clk,
	input 					reset,
	input 					wr_en,
	input 					rd_en,
	input 					start,
	input 					done,
	input [31:0] 			k,
	input [dataWidth-1:0] 	dataValueIn,
	output [31:0] 			dataNameOut,
	output [dataWidth-1:0] 	dataValueOut
);
	
	reg 				reset_reg;
	reg 				wr_en_reg;
	reg 				rd_en_reg;
	reg 				start_reg;
	reg 				done_reg;
	reg [31:0] 			k_reg;
	reg [dataWidth-1:0] dataValueIn_reg;

	always @(posedge clk)
	begin
		reset_reg <= reset;
		wr_en_reg <= wr_en;
		rd_en_reg <= rd_en;
		start_reg <= start;
		done_reg <= done;
		k_reg <= k;
		dataValueIn_reg <= dataValueIn;
	end

	knnTop #(
		.DATA_WIDTH(dataWidth),
		.DIMENSIONS(numberOfDimensions)
	) top (
		.mclk 			(clk),
		.reset 			(reset_reg),
		.wr_en 			(wr_en_reg),
		.rd_en 			(rd_en_reg),
		.start 			(start_reg),
		.done 			(done_reg),
		.k 				(k_reg),
		.dataValueIn 	(dataValueIn_reg),
		.dataNameOut 	(dataNameOut),
		.dataValueOut 	(dataValueOut)
	);

endmodule // knnTop