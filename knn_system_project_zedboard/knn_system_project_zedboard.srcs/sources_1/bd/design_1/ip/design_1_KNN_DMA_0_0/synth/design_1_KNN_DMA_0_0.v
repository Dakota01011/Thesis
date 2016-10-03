// (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:KNN_DMA:1.03
// IP Revision: 6

(* X_CORE_INFO = "KNN_DMA_v1_0,Vivado 2016.2" *)
(* CHECK_LICENSE_TYPE = "design_1_KNN_DMA_0_0,KNN_DMA_v1_0,{}" *)
(* CORE_GENERATION_INFO = "design_1_KNN_DMA_0_0,KNN_DMA_v1_0,{x_ipProduct=Vivado 2016.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=KNN_DMA,x_ipVersion=1.03,x_ipCoreRevision=6,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_M00_AXI_MM2S_BURST_LEN=256,C_M00_AXI_MM2S_ID_WIDTH=1,C_M00_AXI_MM2S_ADDR_WIDTH=32,C_M00_AXI_MM2S_DATA_WIDTH=64,C_M00_AXI_MM2S_ARUSER_WIDTH=1,C_M00_AXI_MM2S_RUSER_WIDTH=1,C_M01_AXI_MM2S_BURST_LEN=256,C_M01_AXI_MM2S_ID_WIDTH=1,C_M01_AXI_MM2S_ADDR_WIDTH=32,C_M01_AXI_MM2S_DATA_WIDTH=64,C_M01_AXI_MM2S_ARUS\
ER_WIDTH=1,C_M01_AXI_MM2S_RUSER_WIDTH=1,C_M_AXIS_MM2S_TDATA_WIDTH=128,C_S_AXI_LITE_DATA_WIDTH=32,C_S_AXI_LITE_ADDR_WIDTH=6}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_KNN_DMA_0_0 (
  m00_axi_mm2s_arid,
  m00_axi_mm2s_araddr,
  m00_axi_mm2s_arlen,
  m00_axi_mm2s_arsize,
  m00_axi_mm2s_arburst,
  m00_axi_mm2s_arlock,
  m00_axi_mm2s_arcache,
  m00_axi_mm2s_arprot,
  m00_axi_mm2s_arqos,
  m00_axi_mm2s_aruser,
  m00_axi_mm2s_arvalid,
  m00_axi_mm2s_arready,
  m00_axi_mm2s_rid,
  m00_axi_mm2s_rdata,
  m00_axi_mm2s_rresp,
  m00_axi_mm2s_rlast,
  m00_axi_mm2s_ruser,
  m00_axi_mm2s_rvalid,
  m00_axi_mm2s_rready,
  m00_axi_mm2s_aclk,
  m00_axi_mm2s_aresetn,
  m01_axi_mm2s_arid,
  m01_axi_mm2s_araddr,
  m01_axi_mm2s_arlen,
  m01_axi_mm2s_arsize,
  m01_axi_mm2s_arburst,
  m01_axi_mm2s_arlock,
  m01_axi_mm2s_arcache,
  m01_axi_mm2s_arprot,
  m01_axi_mm2s_arqos,
  m01_axi_mm2s_aruser,
  m01_axi_mm2s_arvalid,
  m01_axi_mm2s_arready,
  m01_axi_mm2s_rid,
  m01_axi_mm2s_rdata,
  m01_axi_mm2s_rresp,
  m01_axi_mm2s_rlast,
  m01_axi_mm2s_ruser,
  m01_axi_mm2s_rvalid,
  m01_axi_mm2s_rready,
  m01_axi_mm2s_aclk,
  m01_axi_mm2s_aresetn,
  m_axis_mm2s_tdata,
  m_axis_mm2s_tstrb,
  m_axis_mm2s_tlast,
  m_axis_mm2s_tvalid,
  m_axis_mm2s_tready,
  m_axis_mm2s_aclk,
  m_axis_mm2s_aresetn,
  s_axi_lite_awaddr,
  s_axi_lite_awprot,
  s_axi_lite_awvalid,
  s_axi_lite_awready,
  s_axi_lite_wdata,
  s_axi_lite_wstrb,
  s_axi_lite_wvalid,
  s_axi_lite_wready,
  s_axi_lite_bresp,
  s_axi_lite_bvalid,
  s_axi_lite_bready,
  s_axi_lite_araddr,
  s_axi_lite_arprot,
  s_axi_lite_arvalid,
  s_axi_lite_arready,
  s_axi_lite_rdata,
  s_axi_lite_rresp,
  s_axi_lite_rvalid,
  s_axi_lite_rready,
  s_axi_lite_aclk,
  s_axi_lite_aresetn
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_MM2S ARID" *)
output wire [0 : 0] m00_axi_mm2s_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_MM2S ARADDR" *)
output wire [31 : 0] m00_axi_mm2s_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_MM2S ARLEN" *)
output wire [7 : 0] m00_axi_mm2s_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_MM2S ARSIZE" *)
output wire [2 : 0] m00_axi_mm2s_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_MM2S ARBURST" *)
output wire [1 : 0] m00_axi_mm2s_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_MM2S ARLOCK" *)
output wire m00_axi_mm2s_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_MM2S ARCACHE" *)
output wire [3 : 0] m00_axi_mm2s_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_MM2S ARPROT" *)
output wire [2 : 0] m00_axi_mm2s_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_MM2S ARQOS" *)
output wire [3 : 0] m00_axi_mm2s_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_MM2S ARUSER" *)
output wire [0 : 0] m00_axi_mm2s_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_MM2S ARVALID" *)
output wire m00_axi_mm2s_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_MM2S ARREADY" *)
input wire m00_axi_mm2s_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_MM2S RID" *)
input wire [0 : 0] m00_axi_mm2s_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_MM2S RDATA" *)
input wire [63 : 0] m00_axi_mm2s_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_MM2S RRESP" *)
input wire [1 : 0] m00_axi_mm2s_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_MM2S RLAST" *)
input wire m00_axi_mm2s_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_MM2S RUSER" *)
input wire [0 : 0] m00_axi_mm2s_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_MM2S RVALID" *)
input wire m00_axi_mm2s_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI_MM2S RREADY" *)
output wire m00_axi_mm2s_rready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXI_MM2S_CLK CLK" *)
input wire m00_axi_mm2s_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXI_MM2S_RST RST" *)
input wire m00_axi_mm2s_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI_MM2S ARID" *)
output wire [0 : 0] m01_axi_mm2s_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI_MM2S ARADDR" *)
output wire [31 : 0] m01_axi_mm2s_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI_MM2S ARLEN" *)
output wire [7 : 0] m01_axi_mm2s_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI_MM2S ARSIZE" *)
output wire [2 : 0] m01_axi_mm2s_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI_MM2S ARBURST" *)
output wire [1 : 0] m01_axi_mm2s_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI_MM2S ARLOCK" *)
output wire m01_axi_mm2s_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI_MM2S ARCACHE" *)
output wire [3 : 0] m01_axi_mm2s_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI_MM2S ARPROT" *)
output wire [2 : 0] m01_axi_mm2s_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI_MM2S ARQOS" *)
output wire [3 : 0] m01_axi_mm2s_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI_MM2S ARUSER" *)
output wire [0 : 0] m01_axi_mm2s_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI_MM2S ARVALID" *)
output wire m01_axi_mm2s_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI_MM2S ARREADY" *)
input wire m01_axi_mm2s_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI_MM2S RID" *)
input wire [0 : 0] m01_axi_mm2s_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI_MM2S RDATA" *)
input wire [63 : 0] m01_axi_mm2s_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI_MM2S RRESP" *)
input wire [1 : 0] m01_axi_mm2s_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI_MM2S RLAST" *)
input wire m01_axi_mm2s_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI_MM2S RUSER" *)
input wire [0 : 0] m01_axi_mm2s_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI_MM2S RVALID" *)
input wire m01_axi_mm2s_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI_MM2S RREADY" *)
output wire m01_axi_mm2s_rready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M01_AXI_MM2S_CLK CLK" *)
input wire m01_axi_mm2s_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M01_AXI_MM2S_RST RST" *)
input wire m01_axi_mm2s_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TDATA" *)
output wire [127 : 0] m_axis_mm2s_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TSTRB" *)
output wire [15 : 0] m_axis_mm2s_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TLAST" *)
output wire m_axis_mm2s_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TVALID" *)
output wire m_axis_mm2s_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TREADY" *)
input wire m_axis_mm2s_tready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXIS_MM2S_CLK CLK" *)
input wire m_axis_mm2s_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M_AXIS_MM2S_RST RST" *)
input wire m_axis_mm2s_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWADDR" *)
input wire [5 : 0] s_axi_lite_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWPROT" *)
input wire [2 : 0] s_axi_lite_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWVALID" *)
input wire s_axi_lite_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE AWREADY" *)
output wire s_axi_lite_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WDATA" *)
input wire [31 : 0] s_axi_lite_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WSTRB" *)
input wire [3 : 0] s_axi_lite_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WVALID" *)
input wire s_axi_lite_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE WREADY" *)
output wire s_axi_lite_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BRESP" *)
output wire [1 : 0] s_axi_lite_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BVALID" *)
output wire s_axi_lite_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE BREADY" *)
input wire s_axi_lite_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARADDR" *)
input wire [5 : 0] s_axi_lite_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARPROT" *)
input wire [2 : 0] s_axi_lite_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARVALID" *)
input wire s_axi_lite_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE ARREADY" *)
output wire s_axi_lite_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RDATA" *)
output wire [31 : 0] s_axi_lite_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RRESP" *)
output wire [1 : 0] s_axi_lite_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RVALID" *)
output wire s_axi_lite_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_LITE RREADY" *)
input wire s_axi_lite_rready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_LITE_CLK CLK" *)
input wire s_axi_lite_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_LITE_RST RST" *)
input wire s_axi_lite_aresetn;

  KNN_DMA_v1_0 #(
    .C_M00_AXI_MM2S_BURST_LEN(256),  // Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths
    .C_M00_AXI_MM2S_ID_WIDTH(1),  // Thread ID Width
    .C_M00_AXI_MM2S_ADDR_WIDTH(32),  // Width of Address Bus
    .C_M00_AXI_MM2S_DATA_WIDTH(64),  // Width of Data Bus
    .C_M00_AXI_MM2S_ARUSER_WIDTH(1),  // Width of User Read Address Bus
    .C_M00_AXI_MM2S_RUSER_WIDTH(1),  // Width of User Read Data Bus
    .C_M01_AXI_MM2S_BURST_LEN(256),  // Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths
    .C_M01_AXI_MM2S_ID_WIDTH(1),  // Thread ID Width
    .C_M01_AXI_MM2S_ADDR_WIDTH(32),  // Width of Address Bus
    .C_M01_AXI_MM2S_DATA_WIDTH(64),  // Width of Data Bus
    .C_M01_AXI_MM2S_ARUSER_WIDTH(1),  // Width of User Read Address Bus
    .C_M01_AXI_MM2S_RUSER_WIDTH(1),  // Width of User Read Data Bus
    .C_M_AXIS_MM2S_TDATA_WIDTH(128),  // Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
    .C_S_AXI_LITE_DATA_WIDTH(32),  // Width of S_AXI data bus
    .C_S_AXI_LITE_ADDR_WIDTH(6)  // Width of S_AXI address bus
  ) inst (
    .m00_axi_mm2s_arid(m00_axi_mm2s_arid),
    .m00_axi_mm2s_araddr(m00_axi_mm2s_araddr),
    .m00_axi_mm2s_arlen(m00_axi_mm2s_arlen),
    .m00_axi_mm2s_arsize(m00_axi_mm2s_arsize),
    .m00_axi_mm2s_arburst(m00_axi_mm2s_arburst),
    .m00_axi_mm2s_arlock(m00_axi_mm2s_arlock),
    .m00_axi_mm2s_arcache(m00_axi_mm2s_arcache),
    .m00_axi_mm2s_arprot(m00_axi_mm2s_arprot),
    .m00_axi_mm2s_arqos(m00_axi_mm2s_arqos),
    .m00_axi_mm2s_aruser(m00_axi_mm2s_aruser),
    .m00_axi_mm2s_arvalid(m00_axi_mm2s_arvalid),
    .m00_axi_mm2s_arready(m00_axi_mm2s_arready),
    .m00_axi_mm2s_rid(m00_axi_mm2s_rid),
    .m00_axi_mm2s_rdata(m00_axi_mm2s_rdata),
    .m00_axi_mm2s_rresp(m00_axi_mm2s_rresp),
    .m00_axi_mm2s_rlast(m00_axi_mm2s_rlast),
    .m00_axi_mm2s_ruser(m00_axi_mm2s_ruser),
    .m00_axi_mm2s_rvalid(m00_axi_mm2s_rvalid),
    .m00_axi_mm2s_rready(m00_axi_mm2s_rready),
    .m00_axi_mm2s_aclk(m00_axi_mm2s_aclk),
    .m00_axi_mm2s_aresetn(m00_axi_mm2s_aresetn),
    .m01_axi_mm2s_arid(m01_axi_mm2s_arid),
    .m01_axi_mm2s_araddr(m01_axi_mm2s_araddr),
    .m01_axi_mm2s_arlen(m01_axi_mm2s_arlen),
    .m01_axi_mm2s_arsize(m01_axi_mm2s_arsize),
    .m01_axi_mm2s_arburst(m01_axi_mm2s_arburst),
    .m01_axi_mm2s_arlock(m01_axi_mm2s_arlock),
    .m01_axi_mm2s_arcache(m01_axi_mm2s_arcache),
    .m01_axi_mm2s_arprot(m01_axi_mm2s_arprot),
    .m01_axi_mm2s_arqos(m01_axi_mm2s_arqos),
    .m01_axi_mm2s_aruser(m01_axi_mm2s_aruser),
    .m01_axi_mm2s_arvalid(m01_axi_mm2s_arvalid),
    .m01_axi_mm2s_arready(m01_axi_mm2s_arready),
    .m01_axi_mm2s_rid(m01_axi_mm2s_rid),
    .m01_axi_mm2s_rdata(m01_axi_mm2s_rdata),
    .m01_axi_mm2s_rresp(m01_axi_mm2s_rresp),
    .m01_axi_mm2s_rlast(m01_axi_mm2s_rlast),
    .m01_axi_mm2s_ruser(m01_axi_mm2s_ruser),
    .m01_axi_mm2s_rvalid(m01_axi_mm2s_rvalid),
    .m01_axi_mm2s_rready(m01_axi_mm2s_rready),
    .m01_axi_mm2s_aclk(m01_axi_mm2s_aclk),
    .m01_axi_mm2s_aresetn(m01_axi_mm2s_aresetn),
    .m_axis_mm2s_tdata(m_axis_mm2s_tdata),
    .m_axis_mm2s_tstrb(m_axis_mm2s_tstrb),
    .m_axis_mm2s_tlast(m_axis_mm2s_tlast),
    .m_axis_mm2s_tvalid(m_axis_mm2s_tvalid),
    .m_axis_mm2s_tready(m_axis_mm2s_tready),
    .m_axis_mm2s_aclk(m_axis_mm2s_aclk),
    .m_axis_mm2s_aresetn(m_axis_mm2s_aresetn),
    .s_axi_lite_awaddr(s_axi_lite_awaddr),
    .s_axi_lite_awprot(s_axi_lite_awprot),
    .s_axi_lite_awvalid(s_axi_lite_awvalid),
    .s_axi_lite_awready(s_axi_lite_awready),
    .s_axi_lite_wdata(s_axi_lite_wdata),
    .s_axi_lite_wstrb(s_axi_lite_wstrb),
    .s_axi_lite_wvalid(s_axi_lite_wvalid),
    .s_axi_lite_wready(s_axi_lite_wready),
    .s_axi_lite_bresp(s_axi_lite_bresp),
    .s_axi_lite_bvalid(s_axi_lite_bvalid),
    .s_axi_lite_bready(s_axi_lite_bready),
    .s_axi_lite_araddr(s_axi_lite_araddr),
    .s_axi_lite_arprot(s_axi_lite_arprot),
    .s_axi_lite_arvalid(s_axi_lite_arvalid),
    .s_axi_lite_arready(s_axi_lite_arready),
    .s_axi_lite_rdata(s_axi_lite_rdata),
    .s_axi_lite_rresp(s_axi_lite_rresp),
    .s_axi_lite_rvalid(s_axi_lite_rvalid),
    .s_axi_lite_rready(s_axi_lite_rready),
    .s_axi_lite_aclk(s_axi_lite_aclk),
    .s_axi_lite_aresetn(s_axi_lite_aresetn)
  );
endmodule
