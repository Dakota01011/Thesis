`timescale 1 ns / 1 ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Dakota Koelling
// Engineer: Dakota Koelling
// 
// Create Date: 09/21/2016 02:23:40 PM
// Design Name: AXI interface testbench
// Module Name: AXIS_M_tb
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


module AXIS_M_tb();

	parameter width = 32;

	reg [width-1:0] AXIS_data;
	reg wr_en;
	reg M_AXIS_ACLK;
	reg M_AXIS_ARESETN;
	reg M_AXIS_TREADY;
	wire M_AXIS_TVALID;
	wire [width-1 : 0] M_AXIS_TDATA;
	wire [(width/8)-1 : 0] M_AXIS_TSTRB;
	wire M_AXIS_TLAST;

	integer i;
	

KNN_accelerator_v3_0_M00_AXIS #
	(
		.K(10),
		.C_M_AXIS_TDATA_WIDTH(width)
	) uut (
		.AXIS_data(AXIS_data),
		.wr_en(wr_en),
		.M_AXIS_ACLK(M_AXIS_ACLK),
		.M_AXIS_ARESETN(M_AXIS_ARESETN),
		.M_AXIS_TVALID(M_AXIS_TVALID),
		.M_AXIS_TDATA(M_AXIS_TDATA),
		.M_AXIS_TSTRB(M_AXIS_TSTRB),
		.M_AXIS_TLAST(M_AXIS_TLAST),
		.M_AXIS_TREADY(M_AXIS_TREADY)
	);

	initial
	begin
		M_AXIS_ACLK = 0;
		forever
		begin
			#5 M_AXIS_ACLK = ~M_AXIS_ACLK;
		end
	end

	initial
	begin
		AXIS_data = 6736;
		wr_en = 0;
		M_AXIS_ARESETN = 0;
		M_AXIS_TREADY = 1;
		#100;
		M_AXIS_ARESETN = 1;
		#100;
		wr_en = 1;
		#10;
        AXIS_data = 2771;
        #10;
        AXIS_data = 9393;
        #10;
        AXIS_data = 4278;
        #10;
        AXIS_data = 6494;
        #10;
        AXIS_data = 9560;
        #10;
        AXIS_data = 8839;
        #10;
        AXIS_data = 2262;
        #10;
        AXIS_data = 5411;
        #10;
        AXIS_data = 4373;
        #10;
        wr_en = 0;
	end

endmodule
