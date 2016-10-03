
`timescale 1 ns / 1 ps

	module KNN_DMA_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S_AXI_LITE
		parameter integer C_S_AXI_LITE_DATA_WIDTH	= 32,
		parameter integer C_S_AXI_LITE_ADDR_WIDTH	= 6,

		// Parameters of Axi Master Bus Interface M_AXIS_MM2S
		parameter integer C_M_AXIS_MM2S_TDATA_WIDTH	= 128,

		// Parameters of Axi Master Bus Interface M00_AXI_MM2S
		parameter integer C_M00_AXI_MM2S_BURST_LEN	= 256,
		parameter integer C_M00_AXI_MM2S_ID_WIDTH	= 1,
		parameter integer C_M00_AXI_MM2S_ADDR_WIDTH	= 32,
		parameter integer C_M00_AXI_MM2S_DATA_WIDTH	= 64,
		parameter integer C_M00_AXI_MM2S_ARUSER_WIDTH	= 0,
		parameter integer C_M00_AXI_MM2S_RUSER_WIDTH	= 0,

		// Parameters of Axi Master Bus Interface M01_AXI_MM2S
		parameter integer C_M01_AXI_MM2S_BURST_LEN	= 256,
		parameter integer C_M01_AXI_MM2S_ID_WIDTH	= 1,
		parameter integer C_M01_AXI_MM2S_ADDR_WIDTH	= 32,
		parameter integer C_M01_AXI_MM2S_DATA_WIDTH	= 64,
		parameter integer C_M01_AXI_MM2S_ARUSER_WIDTH	= 0,
		parameter integer C_M01_AXI_MM2S_RUSER_WIDTH	= 0
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S_AXI_LITE
		input wire  s_axi_lite_aclk,
		input wire  s_axi_lite_aresetn,
		input wire [C_S_AXI_LITE_ADDR_WIDTH-1 : 0] s_axi_lite_awaddr,
		input wire [2 : 0] s_axi_lite_awprot,
		input wire  s_axi_lite_awvalid,
		output wire  s_axi_lite_awready,
		input wire [C_S_AXI_LITE_DATA_WIDTH-1 : 0] s_axi_lite_wdata,
		input wire [(C_S_AXI_LITE_DATA_WIDTH/8)-1 : 0] s_axi_lite_wstrb,
		input wire  s_axi_lite_wvalid,
		output wire  s_axi_lite_wready,
		output wire [1 : 0] s_axi_lite_bresp,
		output wire  s_axi_lite_bvalid,
		input wire  s_axi_lite_bready,
		input wire [C_S_AXI_LITE_ADDR_WIDTH-1 : 0] s_axi_lite_araddr,
		input wire [2 : 0] s_axi_lite_arprot,
		input wire  s_axi_lite_arvalid,
		output wire  s_axi_lite_arready,
		output wire [C_S_AXI_LITE_DATA_WIDTH-1 : 0] s_axi_lite_rdata,
		output wire [1 : 0] s_axi_lite_rresp,
		output wire  s_axi_lite_rvalid,
		input wire  s_axi_lite_rready,

		// Ports of Axi Master Bus Interface M_AXIS_MM2S
		input wire  m_axis_mm2s_aclk,
		input wire  m_axis_mm2s_aresetn,
		output wire  m_axis_mm2s_tvalid,
		output wire [C_M_AXIS_MM2S_TDATA_WIDTH-1 : 0] m_axis_mm2s_tdata,
		output wire [(C_M_AXIS_MM2S_TDATA_WIDTH/8)-1 : 0] m_axis_mm2s_tstrb,
		output wire  m_axis_mm2s_tlast,
		input wire  m_axis_mm2s_tready,

		// Ports of Axi Master Bus Interface M00_AXI_MM2S
		input wire  m00_axi_mm2s_aclk,
		input wire  m00_axi_mm2s_aresetn,
		output wire [C_M00_AXI_MM2S_ID_WIDTH-1 : 0] m00_axi_mm2s_arid,
		output wire [C_M00_AXI_MM2S_ADDR_WIDTH-1 : 0] m00_axi_mm2s_araddr,
		output wire [7 : 0] m00_axi_mm2s_arlen,
		output wire [2 : 0] m00_axi_mm2s_arsize,
		output wire [1 : 0] m00_axi_mm2s_arburst,
		output wire  m00_axi_mm2s_arlock,
		output wire [3 : 0] m00_axi_mm2s_arcache,
		output wire [2 : 0] m00_axi_mm2s_arprot,
		output wire [3 : 0] m00_axi_mm2s_arqos,
		output wire [C_M00_AXI_MM2S_ARUSER_WIDTH-1 : 0] m00_axi_mm2s_aruser,
		output wire  m00_axi_mm2s_arvalid,
		input wire  m00_axi_mm2s_arready,
		input wire [C_M00_AXI_MM2S_ID_WIDTH-1 : 0] m00_axi_mm2s_rid,
		input wire [C_M00_AXI_MM2S_DATA_WIDTH-1 : 0] m00_axi_mm2s_rdata,
		input wire [1 : 0] m00_axi_mm2s_rresp,
		input wire  m00_axi_mm2s_rlast,
		input wire [C_M00_AXI_MM2S_RUSER_WIDTH-1 : 0] m00_axi_mm2s_ruser,
		input wire  m00_axi_mm2s_rvalid,
		output wire  m00_axi_mm2s_rready,

		// Ports of Axi Master Bus Interface M01_AXI_MM2S
		input wire  m01_axi_mm2s_aclk,
		input wire  m01_axi_mm2s_aresetn,
		output wire [C_M01_AXI_MM2S_ID_WIDTH-1 : 0] m01_axi_mm2s_arid,
		output wire [C_M01_AXI_MM2S_ADDR_WIDTH-1 : 0] m01_axi_mm2s_araddr,
		output wire [7 : 0] m01_axi_mm2s_arlen,
		output wire [2 : 0] m01_axi_mm2s_arsize,
		output wire [1 : 0] m01_axi_mm2s_arburst,
		output wire  m01_axi_mm2s_arlock,
		output wire [3 : 0] m01_axi_mm2s_arcache,
		output wire [2 : 0] m01_axi_mm2s_arprot,
		output wire [3 : 0] m01_axi_mm2s_arqos,
		output wire [C_M01_AXI_MM2S_ARUSER_WIDTH-1 : 0] m01_axi_mm2s_aruser,
		output wire  m01_axi_mm2s_arvalid,
		input wire  m01_axi_mm2s_arready,
		input wire [C_M01_AXI_MM2S_ID_WIDTH-1 : 0] m01_axi_mm2s_rid,
		input wire [C_M01_AXI_MM2S_DATA_WIDTH-1 : 0] m01_axi_mm2s_rdata,
		input wire [1 : 0] m01_axi_mm2s_rresp,
		input wire  m01_axi_mm2s_rlast,
		input wire [C_M01_AXI_MM2S_RUSER_WIDTH-1 : 0] m01_axi_mm2s_ruser,
		input wire  m01_axi_mm2s_rvalid,
		output wire  m01_axi_mm2s_rready
	);

	wire [31:0] control;
	wire [31:0] status;
	wire [31:0] addr0;
	wire [31:0] length0;
	wire [31:0] addr1;
	wire [31:0] length1;

	wire [127:0] fifoDataOut;
	wire fifoDataOutWrEn;
	wire [63:0] fifoDataIn0;
	wire [63:0] fifoDataIn1;
	wire fifoDataInWrEn0;
	wire fifoDataInWrEn1;

// Instantiation of Axi Bus Interface S_AXI_LITE
	KNN_DMA_v1_0_S_AXI_LITE # ( 
		.C_S_AXI_DATA_WIDTH(C_S_AXI_LITE_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S_AXI_LITE_ADDR_WIDTH)
	) KNN_DMA_v1_0_S_AXI_LITE_inst (
		.control(control),
		.status(status),
		.addr0(addr0),
		.length0(length0),
		.addr1(addr1),
		.length1(length1),
		.S_AXI_ACLK(s_axi_lite_aclk),
		.S_AXI_ARESETN(s_axi_lite_aresetn),
		.S_AXI_AWADDR(s_axi_lite_awaddr),
		.S_AXI_AWPROT(s_axi_lite_awprot),
		.S_AXI_AWVALID(s_axi_lite_awvalid),
		.S_AXI_AWREADY(s_axi_lite_awready),
		.S_AXI_WDATA(s_axi_lite_wdata),
		.S_AXI_WSTRB(s_axi_lite_wstrb),
		.S_AXI_WVALID(s_axi_lite_wvalid),
		.S_AXI_WREADY(s_axi_lite_wready),
		.S_AXI_BRESP(s_axi_lite_bresp),
		.S_AXI_BVALID(s_axi_lite_bvalid),
		.S_AXI_BREADY(s_axi_lite_bready),
		.S_AXI_ARADDR(s_axi_lite_araddr),
		.S_AXI_ARPROT(s_axi_lite_arprot),
		.S_AXI_ARVALID(s_axi_lite_arvalid),
		.S_AXI_ARREADY(s_axi_lite_arready),
		.S_AXI_RDATA(s_axi_lite_rdata),
		.S_AXI_RRESP(s_axi_lite_rresp),
		.S_AXI_RVALID(s_axi_lite_rvalid),
		.S_AXI_RREADY(s_axi_lite_rready)
	);

// Instantiation of Axi Bus Interface M_AXIS_MM2S
	KNN_DMA_v1_0_M_AXIS_MM2S # ( 
		.C_M_AXIS_TDATA_WIDTH(C_M_AXIS_MM2S_TDATA_WIDTH)
	) KNN_DMA_v1_0_M_AXIS_MM2S_inst (
		.AXIS_data(fifoDataOut),
		.wr_en(fifoDataOutWrEn),
		.M_AXIS_ACLK(m_axis_mm2s_aclk),
		.M_AXIS_ARESETN(m_axis_mm2s_aresetn),
		.M_AXIS_TVALID(m_axis_mm2s_tvalid),
		.M_AXIS_TDATA(m_axis_mm2s_tdata),
		.M_AXIS_TSTRB(m_axis_mm2s_tstrb),
		.M_AXIS_TLAST(m_axis_mm2s_tlast),
		.M_AXIS_TREADY(m_axis_mm2s_tready)
	);

// Instantiation of Axi Bus Interface M00_AXI_MM2S
	KNN_DMA_v1_0_M00_AXI_MM2S # (
		.C_M_AXI_BURST_LEN(C_M00_AXI_MM2S_BURST_LEN),
		.C_M_AXI_ID_WIDTH(C_M00_AXI_MM2S_ID_WIDTH),
		.C_M_AXI_ADDR_WIDTH(C_M00_AXI_MM2S_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_M00_AXI_MM2S_DATA_WIDTH),
		.C_M_AXI_ARUSER_WIDTH(C_M00_AXI_MM2S_ARUSER_WIDTH),
		.C_M_AXI_RUSER_WIDTH(C_M00_AXI_MM2S_RUSER_WIDTH)
	) KNN_DMA_v1_0_M00_AXI_MM2S_inst (
		.start(control[0]),
		.starting_addr(addr0),
		.starting_length(length0),
		.wr_en(fifoDataInWrEn0),
		.data_out(fifoDataIn0),
		.transfer_done(status[0]),
		.error(status[1]),
		.M_AXI_ACLK(m00_axi_mm2s_aclk),
		.M_AXI_ARESETN(m00_axi_mm2s_aresetn),
		.M_AXI_ARID(m00_axi_mm2s_arid),
		.M_AXI_ARADDR(m00_axi_mm2s_araddr),
		.M_AXI_ARLEN(m00_axi_mm2s_arlen),
		.M_AXI_ARSIZE(m00_axi_mm2s_arsize),
		.M_AXI_ARBURST(m00_axi_mm2s_arburst),
		.M_AXI_ARLOCK(m00_axi_mm2s_arlock),
		.M_AXI_ARCACHE(m00_axi_mm2s_arcache),
		.M_AXI_ARPROT(m00_axi_mm2s_arprot),
		.M_AXI_ARQOS(m00_axi_mm2s_arqos),
		.M_AXI_ARUSER(m00_axi_mm2s_aruser),
		.M_AXI_ARVALID(m00_axi_mm2s_arvalid),
		.M_AXI_ARREADY(m00_axi_mm2s_arready),
		.M_AXI_RID(m00_axi_mm2s_rid),
		.M_AXI_RDATA(m00_axi_mm2s_rdata),
		.M_AXI_RRESP(m00_axi_mm2s_rresp),
		.M_AXI_RLAST(m00_axi_mm2s_rlast),
		.M_AXI_RUSER(m00_axi_mm2s_ruser),
		.M_AXI_RVALID(m00_axi_mm2s_rvalid),
		.M_AXI_RREADY(m00_axi_mm2s_rready)
	);

// Instantiation of Axi Bus Interface M01_AXI_MM2S
	KNN_DMA_v1_0_M00_AXI_MM2S # (
		.C_M_AXI_BURST_LEN(C_M01_AXI_MM2S_BURST_LEN),
		.C_M_AXI_ID_WIDTH(C_M01_AXI_MM2S_ID_WIDTH),
		.C_M_AXI_ADDR_WIDTH(C_M01_AXI_MM2S_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_M01_AXI_MM2S_DATA_WIDTH),
		.C_M_AXI_ARUSER_WIDTH(C_M01_AXI_MM2S_ARUSER_WIDTH),
		.C_M_AXI_RUSER_WIDTH(C_M01_AXI_MM2S_RUSER_WIDTH)
	) KNN_DMA_v1_0_M01_AXI_MM2S_inst (
		.start(control[0]),
		.starting_addr(addr1),
		.starting_length(length1),
		.wr_en(fifoDataInWrEn1),
		.data_out(fifoDataIn1),
		.transfer_done(status[2]),
		.error(status[3]),
		.M_AXI_ACLK(m01_axi_mm2s_aclk),
		.M_AXI_ARESETN(m01_axi_mm2s_aresetn),
		.M_AXI_ARID(m01_axi_mm2s_arid),
		.M_AXI_ARADDR(m01_axi_mm2s_araddr),
		.M_AXI_ARLEN(m01_axi_mm2s_arlen),
		.M_AXI_ARSIZE(m01_axi_mm2s_arsize),
		.M_AXI_ARBURST(m01_axi_mm2s_arburst),
		.M_AXI_ARLOCK(m01_axi_mm2s_arlock),
		.M_AXI_ARCACHE(m01_axi_mm2s_arcache),
		.M_AXI_ARPROT(m01_axi_mm2s_arprot),
		.M_AXI_ARQOS(m01_axi_mm2s_arqos),
		.M_AXI_ARUSER(m01_axi_mm2s_aruser),
		.M_AXI_ARVALID(m01_axi_mm2s_arvalid),
		.M_AXI_ARREADY(m01_axi_mm2s_arready),
		.M_AXI_RID(m01_axi_mm2s_rid),
		.M_AXI_RDATA(m01_axi_mm2s_rdata),
		.M_AXI_RRESP(m01_axi_mm2s_rresp),
		.M_AXI_RLAST(m01_axi_mm2s_rlast),
		.M_AXI_RUSER(m01_axi_mm2s_ruser),
		.M_AXI_RVALID(m01_axi_mm2s_rvalid),
		.M_AXI_RREADY(m01_axi_mm2s_rready)
	);

	// Add user logic here

	// FIFO_SYNC_MACRO: Synchronous First-In, First-Out (FIfor) RAM Buffer
	// 7 Series
	// Xilinx HDL Libraries Guide, version 14.7
	/////////////////////////////////////////////////////////////////
	// DATA_WIDTH | FIFO_SIZE | FIfor Depth | RDCOUNT/WRCOUNT Width //
	// ===========|===========|============|=======================//
	// 37-72 | "36Kb" | 512 | 9-bit //
	// 19-36 | "36Kb" | 1024 | 10-bit //
	// 19-36 | "18Kb" | 512 | 9-bit //
	// 10-18 | "36Kb" | 2048 | 11-bit //
	// 10-18 | "18Kb" | 1024 | 10-bit //
	// 5-9 | "36Kb" | 4096 | 12-bit //
	// 5-9 | "18Kb" | 2048 | 11-bit //
	// 1-4 | "36Kb" | 8192 | 13-bit //
	// 1-4 | "18Kb" | 4096 | 12-bit //
	/////////////////////////////////////////////////////////////////
	FIFO_SYNC_MACRO #(
	.DEVICE("7SERIES"), // Target Device: "VIRTEX5", "VIRTEX6", "7SERIES"
	.ALMOST_EMPTY_OFFSET(9'h001), // Sets the almost empty threshold
	.ALMOST_FULL_OFFSET(9'h080), // Sets almost full threshold
	.DATA_WIDTH(64), // Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
	.DO_REG(0), // Optional output register (0 or 1)
	.FIFO_SIZE ("36Kb") // Target BRAM: "18Kb" or "36Kb"
	) FIFO_SYNC_MACRO_inst0 (
	.ALMOSTEMPTY(), // 1-bit output almost empty
	.ALMOSTFULL(), // 1-bit output almost full
	.DO(fifoDataOut[63:0]), // Output data, width defined by DATA_WIDTH parameter
	.EMPTY(EMPTY0), // 1-bit output empty
	.FULL(), // 1-bit output full
	.RDCOUNT(), // Output read count, width determined by FIfor depth
	.RDERR(), // 1-bit output read error
	.WRCOUNT(), // Output write count, width determined by FIfor depth
	.WRERR(), // 1-bit output write error
	.CLK(m00_axi_mm2s_aclk), // 1-bit input clock
	.DI(fifoDataIn0), // Input data, width defined by DATA_WIDTH parameter
	.RDEN(fifoDataOutWrEn), // 1-bit input read enable
	.RST(~m00_axi_mm2s_aresetn), // 1-bit input reset
	.WREN(fifoDataInWrEn0) // 1-bit input write enable
	);
	// End of FIFO_SYNC_MACRO_inst instantiation

	// FIFO_SYNC_MACRO: Synchronous First-In, First-Out (FIfor) RAM Buffer
	FIFO_SYNC_MACRO #(
	.DEVICE("7SERIES"), // Target Device: "VIRTEX5", "VIRTEX6", "7SERIES"
	.ALMOST_EMPTY_OFFSET(9'h001), // Sets the almost empty threshold
	.ALMOST_FULL_OFFSET(9'h080), // Sets almost full threshold
	.DATA_WIDTH(64), // Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
	.DO_REG(0), // Optional output register (0 or 1)
	.FIFO_SIZE ("36Kb") // Target BRAM: "18Kb" or "36Kb"
	) FIFO_SYNC_MACRO_inst1 (
	.ALMOSTEMPTY(), // 1-bit output almost empty
	.ALMOSTFULL(), // 1-bit output almost full
	.DO(fifoDataOut[127:64]), // Output data, width defined by DATA_WIDTH parameter
	.EMPTY(EMPTY1), // 1-bit output empty
	.FULL(), // 1-bit output full
	.RDCOUNT(), // Output read count, width determined by FIfor depth
	.RDERR(), // 1-bit output read error
	.WRCOUNT(), // Output write count, width determined by FIfor depth
	.WRERR(), // 1-bit output write error
	.CLK(m01_axi_mm2s_aclk), // 1-bit input clock
	.DI(fifoDataIn1), // Input data, width defined by DATA_WIDTH parameter
	.RDEN(fifoDataOutWrEn), // 1-bit input read enable
	.RST(~m01_axi_mm2s_aresetn), // 1-bit input reset
	.WREN(fifoDataInWrEn1) // 1-bit input write enable
	);
	// End of FIFO_SYNC_MACRO_inst instantiation

	assign fifoDataOutWrEn = ~EMPTY0 && ~EMPTY1;

	// User logic ends

	endmodule
