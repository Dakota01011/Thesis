
`timescale 1 ns / 1 ps

	module KNN_DMA_v1_0_M00_AXI_MM2S_reg_wrap #
	(
		parameter integer C_M_AXI_BURST_LEN	= 256,
		parameter integer C_M_AXI_ID_WIDTH	= 1,
		parameter integer C_M_AXI_ADDR_WIDTH	= 32,
		parameter integer C_M_AXI_DATA_WIDTH	= 64,
		parameter integer C_M_AXI_ARUSER_WIDTH	= 0,
		parameter integer C_M_AXI_RUSER_WIDTH	= 0
	)
	(
		input start,
		input [C_M_AXI_ADDR_WIDTH-1:0] starting_addr,
		input [31:0] starting_length,
		output wr_en,
		output [C_M_AXI_DATA_WIDTH-1:0] data_out,
		output transfer_done,
		output error,
		input  M_AXI_ACLK,
		input  M_AXI_ARESETN,
		output [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_ARID,
		output [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_ARADDR,
		output [7 : 0] M_AXI_ARLEN,
		output [2 : 0] M_AXI_ARSIZE,
		output [1 : 0] M_AXI_ARBURST,
		output  M_AXI_ARLOCK,
		output [3 : 0] M_AXI_ARCACHE,
		output [2 : 0] M_AXI_ARPROT,
		output [3 : 0] M_AXI_ARQOS,
		output [C_M_AXI_ARUSER_WIDTH-1 : 0] M_AXI_ARUSER,
		output  M_AXI_ARVALID,
		input  M_AXI_ARREADY,
		input [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_RID,
		input [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_RDATA,
		input [1 : 0] M_AXI_RRESP,
		input  M_AXI_RLAST,
		input [C_M_AXI_RUSER_WIDTH-1 : 0] M_AXI_RUSER,
		input  M_AXI_RVALID,
		output  M_AXI_RREADY
	);

	reg start_reg;
	reg [C_M_AXI_ADDR_WIDTH-1:0] starting_addr_reg;
	reg [31:0] starting_length_reg;
	reg M_AXI_ARESETN_reg;
	reg M_AXI_ARREADY_reg;
	reg [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_RID_reg;
	reg [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_RDATA_reg;
	reg [1 : 0] M_AXI_RRESP_reg;
	reg M_AXI_RLAST_reg;
	reg [C_M_AXI_RUSER_WIDTH-1 : 0] M_AXI_RUSER_reg;
	reg M_AXI_RVALID_reg;

	always @(posedge M_AXI_ACLK)
	begin
		start_reg <= start;
		starting_addr_reg <= starting_addr;
		starting_length_reg <= starting_length;
		M_AXI_ARESETN_reg <= M_AXI_ARESETN;
		M_AXI_ARREADY_reg <= M_AXI_ARREADY;
		M_AXI_RID_reg <= M_AXI_RID;
		M_AXI_RDATA_reg <= M_AXI_RDATA;
		M_AXI_RRESP_reg <= M_AXI_RRESP;
		M_AXI_RLAST_reg <= M_AXI_RLAST;
		M_AXI_RUSER_reg <= M_AXI_RUSER;
		M_AXI_RVALID_reg <= M_AXI_RVALID;
	end

	KNN_DMA_v1_0_M00_AXI_MM2S #
	(
		.C_M_AXI_BURST_LEN(C_M_AXI_BURST_LEN),
		.C_M_AXI_ID_WIDTH(C_M_AXI_ID_WIDTH),
		.C_M_AXI_ADDR_WIDTH(C_M_AXI_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_M_AXI_DATA_WIDTH),
		.C_M_AXI_ARUSER_WIDTH(C_M_AXI_ARUSER_WIDTH),
		.C_M_AXI_RUSER_WIDTH(C_M_AXI_RUSER_WIDTH)
	) uut (
		.start(start_reg),
		.starting_addr(starting_addr_reg),
		.starting_length(starting_length_reg),
		.wr_en(wr_en),
		.data_out(data_out),
		.transfer_done(transfer_done),
		.error(error),
		.M_AXI_ACLK(M_AXI_ACLK),
		.M_AXI_ARESETN(M_AXI_ARESETN_reg),
		.M_AXI_ARID(M_AXI_ARID),
		.M_AXI_ARADDR(M_AXI_ARADDR),
		.M_AXI_ARLEN(M_AXI_ARLEN),
		.M_AXI_ARSIZE(M_AXI_ARSIZE),
		.M_AXI_ARBURST(M_AXI_ARBURST),
		.M_AXI_ARLOCK(M_AXI_ARLOCK),
		.M_AXI_ARCACHE(M_AXI_ARCACHE),
		.M_AXI_ARPROT(M_AXI_ARPROT),
		.M_AXI_ARQOS(M_AXI_ARQOS),
		.M_AXI_ARUSER(M_AXI_ARUSER),
		.M_AXI_ARVALID(M_AXI_ARVALID),
		.M_AXI_ARREADY(M_AXI_ARREADY_reg),
		.M_AXI_RID(M_AXI_RID_reg),
		.M_AXI_RDATA(M_AXI_RDATA_reg),
		.M_AXI_RRESP(M_AXI_RRESP_reg),
		.M_AXI_RLAST(M_AXI_RLAST_reg),
		.M_AXI_RUSER(M_AXI_RUSER_reg),
		.M_AXI_RVALID(M_AXI_RVALID_reg),
		.M_AXI_RREADY(M_AXI_RREADY)
	);

	endmodule
