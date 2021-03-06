
`timescale 1 ns / 1 ps

	module KNN_DMA_v1_0_M00_AXI_MM2S #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths
		parameter integer C_M_AXI_BURST_LEN	= 256,
		// Thread ID Width
		parameter integer C_M_AXI_ID_WIDTH	= 1,
		// Width of Address Bus
		parameter integer C_M_AXI_ADDR_WIDTH	= 32,
		// Width of Data Bus
		parameter integer C_M_AXI_DATA_WIDTH	= 64,
		// Width of User Read Address Bus
		parameter integer C_M_AXI_ARUSER_WIDTH	= 0,
		// Width of User Read Data Bus
		parameter integer C_M_AXI_RUSER_WIDTH	= 0
	)
	(
		// Users to add ports here
		input start,
		input [C_M_AXI_ADDR_WIDTH-1:0] starting_addr,
		input [31:0] starting_length,
		output wr_en,
		output reg [C_M_AXI_DATA_WIDTH-1:0] data_out,
		output transfer_done,
		output reg error,
		// User ports ends
		// Do not modify the ports beyond this line

		// Global Clock Signal.
		input wire  M_AXI_ACLK,
		// Global Reset Singal. This Signal is Active Low
		input wire  M_AXI_ARESETN,
		// Master Interface Read Address.
		output wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_ARID,
		// Read address. This signal indicates the initial address of a read burst transaction.
	(* mark_debug = "true" *)	output reg [C_M_AXI_ADDR_WIDTH-1 : 0] M_AXI_ARADDR,
		// Burst length. The burst length gives the exact number of transfers in a burst
	(* mark_debug = "true" *)	output reg [7 : 0] M_AXI_ARLEN,
		// Burst size. This signal indicates the size of each transfer in the burst
	(* mark_debug = "true" *)	output reg [2 : 0] M_AXI_ARSIZE,
		// Burst type. The burst type and the size information,  determine how the address for each transfer within the burst is calculated.
	(* mark_debug = "true" *)	output reg [1 : 0] M_AXI_ARBURST,
		// Lock type. Provides additional information about the atomic characteristics of the transfer.
		output wire  M_AXI_ARLOCK,
		// Memory type. This signal indicates how transactions are required to progress through a system.
	(* mark_debug = "true" *)	output wire [3 : 0] M_AXI_ARCACHE,
		// Protection type. This signal indicates the privilege and security level of the transaction, and whether the transaction is a data access or an instruction access.
		output wire [2 : 0] M_AXI_ARPROT,
		// Quality of Service, QoS identifier sent for each read transaction
		output wire [3 : 0] M_AXI_ARQOS,
		// Optional User-defined signal in the read address channel.
		output wire [C_M_AXI_ARUSER_WIDTH-1 : 0] M_AXI_ARUSER,
		// Write address valid. This signal indicates that the channel is signaling valid read address and control information
	(* mark_debug = "true" *)	output reg  M_AXI_ARVALID,
		// Read address ready. This signal indicates that the slave is ready to accept an address and associated control signals
	(* mark_debug = "true" *)	input wire  M_AXI_ARREADY,
		// Read ID tag. This signal is the identification tag for the read data group of signals generated by the slave.
		input wire [C_M_AXI_ID_WIDTH-1 : 0] M_AXI_RID,
		// Master Read Data
	(* mark_debug = "true" *)	input wire [C_M_AXI_DATA_WIDTH-1 : 0] M_AXI_RDATA,
		// Read response. This signal indicates the status of the read transfer
	(* mark_debug = "true" *)	input wire [1 : 0] M_AXI_RRESP,
		// Read last. This signal indicates the last transfer in a read burst
	(* mark_debug = "true" *)	input wire  M_AXI_RLAST,
		// Optional User-defined signal in the read address channel.
		input wire [C_M_AXI_RUSER_WIDTH-1 : 0] M_AXI_RUSER,
		// Read valid. This signal indicates that the channel is signaling the required read data.
	(* mark_debug = "true" *)	input wire  M_AXI_RVALID,
		// Read ready. This signal indicates that the master can accept the read data and response information.
	(* mark_debug = "true" *)	output wire  M_AXI_RREADY
	);

	//----------------------------
	//Read Address Channel
	//----------------------------

	reg stop;
	reg start_delay;
	reg [31:0] addr_use;
	reg [31:0] length_remaining;
	reg [31:0] length_use;
	wire [31:0] max_burst_len;

	assign M_AXI_ARID		= 'b0;
	assign M_AXI_ARLOCK		= 1'b0;
	assign M_AXI_ARCACHE	= 4'b0011;
	assign M_AXI_ARPROT		= 3'h0;
	assign M_AXI_ARQOS		= 4'h0;
	assign M_AXI_ARUSER		= 'b1;
	assign max_burst_len 	= 32'h000007FF - (addr_use & 32'h000007FF) + 1;
	assign transfer_done 	= ~wr_en && length_remaining == 0;

	always @(posedge M_AXI_ACLK)
	begin
		if (~M_AXI_ARESETN || ~start || stop || (M_AXI_ARVALID && M_AXI_ARREADY))
		begin
			M_AXI_ARADDR	<= 32'd0;
			M_AXI_ARLEN		<= 8'd0;
			M_AXI_ARSIZE	<= 3'd0;
			M_AXI_ARBURST	<= 2'd0;
			M_AXI_ARVALID	<= 1'd0;
			start_delay 	<= 1'd0;
		end
		else if (~start_delay)
		begin
			start_delay 	<= 1'd1;
		end
		else
		begin
			M_AXI_ARADDR	<= addr_use;
			M_AXI_ARLEN		<= (length_use/8)-1; // Burst LENgth is number of transaction bursts, minus 1
			M_AXI_ARSIZE	<= 3; // 64 bits per transfer
			M_AXI_ARBURST	<= 1; // INCR
			M_AXI_ARVALID	<= 1; // Valid
		end
	end

	always @(posedge M_AXI_ACLK)
	begin
		if (~M_AXI_ARESETN || ~start )
		begin
			addr_use			<= starting_addr;
			length_remaining 	<= starting_length - length_use;
		end
		else if (M_AXI_ARVALID && M_AXI_ARREADY)
		begin
			addr_use			<= addr_use + length_use;
			length_remaining 	<= length_remaining - length_use;
		end
	end

	always @(posedge M_AXI_ACLK)
	begin
		if (~M_AXI_ARESETN || ~start )
		begin
			length_use	<= starting_length < max_burst_len ? starting_length : max_burst_len;
			stop 		<= 0;
		end
		else
		begin
			length_use	<= length_remaining < max_burst_len ? length_remaining : max_burst_len;
			if (length_remaining == 0)
			begin
				stop	<= 1;
			end
		end
	end

	//--------------------------------
	//Read Data (and Response) Channel
	//--------------------------------

	assign M_AXI_RREADY = start;
	assign wr_en 		= M_AXI_RVALID && M_AXI_RREADY;

	always @(posedge M_AXI_ACLK)
	begin
		if (~M_AXI_ARESETN)
		begin
			data_out <= 0;
			error <= 0;
		end
		else if (M_AXI_RVALID && M_AXI_RREADY)
		begin
			data_out <= M_AXI_RDATA;
			if (M_AXI_RLAST && M_AXI_RRESP)
			begin
				error <= 1;
			end
		end
	end

	endmodule
