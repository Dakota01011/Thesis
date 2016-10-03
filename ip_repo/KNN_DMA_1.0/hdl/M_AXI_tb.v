`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Dakota Koelling
// Engineer: Dakota Koelling
// 
// Create Date: 07/29/2016 09:50:48 AM
// Design Name: KNN Top Testbench
// Module Name: knnTop_tb
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


module M_AXI_tb();

	reg clk;
	reg reset;
	reg start;
	reg [31:0] starting_addr;
	reg [31:0] starting_length;
	wire wr_en;
	wire [63:0] data_out;
	wire transfer_done;
	wire error;
	wire [1 : 0] M_AXI_ARID;
	wire [31 : 0] M_AXI_ARADDR;
	wire [7 : 0] M_AXI_ARLEN;
	wire [2 : 0] M_AXI_ARSIZE;
	wire [1 : 0] M_AXI_ARBURST;
	wire M_AXI_ARLOCK;
	wire [3 : 0] M_AXI_ARCACHE;
	wire [2 : 0] M_AXI_ARPROT;
	wire [3 : 0] M_AXI_ARQOS;
	wire [1 : 0] M_AXI_ARUSER;
	wire M_AXI_ARVALID;
	reg M_AXI_ARREADY;
	reg [1 : 0] M_AXI_RID;
	reg [63 : 0] M_AXI_RDATA;
	reg [1 : 0] M_AXI_RRESP;
	reg M_AXI_RLAST;
	reg [1 : 0] M_AXI_RUSER;
	reg M_AXI_RVALID;
	wire M_AXI_RREADY;

	KNN_DMA_v1_0_M00_AXI_MM2S_reg_wrap #
	(
		.C_M_AXI_BURST_LEN(256),
		.C_M_AXI_ID_WIDTH(1),
		.C_M_AXI_ADDR_WIDTH(32),
		.C_M_AXI_DATA_WIDTH(64),
		.C_M_AXI_ARUSER_WIDTH(0),
		.C_M_AXI_RUSER_WIDTH(0)
	) uut (
		.start(start),
		.starting_addr(starting_addr),
		.starting_length(starting_length),
		.wr_en(wr_en),
		.data_out(data_out),
		.transfer_done(transfer_done),
		.error(error),
		.M_AXI_ACLK(clk),
		.M_AXI_ARESETN(reset),
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
		.M_AXI_ARREADY(M_AXI_ARREADY),
		.M_AXI_RID(M_AXI_RID),
		.M_AXI_RDATA(M_AXI_RDATA),
		.M_AXI_RRESP(M_AXI_RRESP),
		.M_AXI_RLAST(M_AXI_RLAST),
		.M_AXI_RUSER(M_AXI_RUSER),
		.M_AXI_RVALID(M_AXI_RVALID),
		.M_AXI_RREADY(M_AXI_RREADY)
	);

	initial
	begin
		clk = 0;
		forever begin
			#10 clk = ~clk;
		end
	end

	initial
	begin
		reset = 0;
		M_AXI_ARREADY = 1;
		start = 0;
		starting_addr = 0;
		starting_length = 0;
		#90;
		reset = 1;
		#20;
		starting_addr = 32'h00001238;
		#20;
		starting_length = 32'h0000FFFF;
		#20;
		start = 1;

	end

endmodule
