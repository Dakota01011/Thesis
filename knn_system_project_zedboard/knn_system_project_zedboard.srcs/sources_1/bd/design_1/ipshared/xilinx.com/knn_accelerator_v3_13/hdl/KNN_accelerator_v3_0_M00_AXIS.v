`timescale 1 ns / 1 ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Dakota Koelling
// Engineer: Dakota Koelling
//
// Create Date: 09/19/2016 11:57:31 PM
// Design Name: AXI interface
// Module Name: KNN_accelerator_v3_0_M00_AXIS
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

	module KNN_accelerator_v3_0_M00_AXIS #
	(
		// Users to add parameters here
		parameter K = 10,
		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
		parameter integer C_M_AXIS_TDATA_WIDTH	= 32
	)
	(
		// Users to add ports here
	(* mark_debug = "true" *)	input [C_M_AXIS_TDATA_WIDTH-1:0] AXIS_data,
	(* mark_debug = "true" *)	input wr_en,
		// User ports ends
		// Do not modify the ports beyond this line

		// Global ports
	(* mark_debug = "true" *)	input wire  M_AXIS_ACLK,
		//
	(* mark_debug = "true" *)	input wire  M_AXIS_ARESETN,
		// Master Stream Ports. TVALID indicates that the master is driving a valid transfer, A transfer takes place when both TVALID and TREADY are asserted.
	(* mark_debug = "true" *)	output wire  M_AXIS_TVALID,
		// TDATA is the primary payload that is used to provide the data that is passing across the interface from the master.
	(* mark_debug = "true" *)	output wire [C_M_AXIS_TDATA_WIDTH-1 : 0] M_AXIS_TDATA,
		// TSTRB is the byte qualifier that indicates whether the content of the associated byte of TDATA is processed as a data byte or a position byte.
	(* mark_debug = "true" *)	output wire [(C_M_AXIS_TDATA_WIDTH/8)-1 : 0] M_AXIS_TSTRB,
		// TLAST indicates the boundary of a packet.
	(* mark_debug = "true" *)	output wire  M_AXIS_TLAST,
		// TREADY indicates that the slave can accept a transfer in the current cycle.
	(* mark_debug = "true" *)	input wire  M_AXIS_TREADY
	);

	// function called clogb2 that returns an integer which has the
	// value of the ceiling of the log base 2.
	function integer clogb2 (input integer bit_depth);
	  begin
		for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
		  bit_depth = bit_depth >> 1;
	  end
	endfunction

	// bit_num gives the minimum number of bits needed to address 'depth' size of FIFO.
	localparam bit_num  = clogb2(K);

	// Define the states of state machine
	// The control state machine oversees the writing of input streaming data to the FIFO,
	// and outputs the streaming data from the FIFO
	parameter [1:0] IDLE = 2'b00,        // This is the initial/idle state
					SEND_STREAM   = 2'b10; // In this state the
										 // stream data is output through M_AXIS_TDATA
	// State variable
(* mark_debug = "true" *)	reg [1:0] mst_exec_state;
	// Example design FIFO read pointer
(* mark_debug = "true" *)	reg [bit_num-1:0] read_pointer;
	// Example design FIFO write pointer
(* mark_debug = "true" *)	reg [bit_num-1:0] write_pointer;

	// AXI Stream internal signals
	//streaming data valid
(* mark_debug = "true" *)	wire  	axis_tvalid;
	//streaming data valid delayed by one clock cycle
(* mark_debug = "true" *)	reg  	axis_tvalid_delay;
	//Last of the streaming data
(* mark_debug = "true" *)	wire  	axis_tlast;
	//Last of the streaming data delayed by one clock cycle
(* mark_debug = "true" *)	reg  	axis_tlast_delay;
	//FIFO implementation signals
(* mark_debug = "true" *)	reg [C_M_AXIS_TDATA_WIDTH-1:0] 	FIFO [K-1:0];
(* mark_debug = "true" *)	reg [C_M_AXIS_TDATA_WIDTH-1:0] 	stream_data_out;
(* mark_debug = "true" *)	wire  	tx_en;
	//The master has issued all the streaming data stored in FIFO
(* mark_debug = "true" *)	reg  	tx_done;

	integer i;


	// I/O Connections assignments

	assign M_AXIS_TVALID	= axis_tvalid_delay;
	assign M_AXIS_TDATA	= stream_data_out;
	assign M_AXIS_TLAST	= axis_tlast_delay;
	assign M_AXIS_TSTRB	= {(C_M_AXIS_TDATA_WIDTH/8){1'b1}};


	// Control state machine implementation
	always @(posedge M_AXIS_ACLK)
	begin
		if (!M_AXIS_ARESETN)
			// Synchronous reset (active low)
			begin
				mst_exec_state <= IDLE;
			end
		else
		case (mst_exec_state)
		IDLE:
			// The slave starts accepting tdata when
			// there tvalid is asserted to mark the
			// presence of valid streaming data
			if (write_pointer == K && read_pointer == 0 )
			begin
				mst_exec_state  <= SEND_STREAM;
			end
			else
			begin
				mst_exec_state  <= IDLE;
			end
		SEND_STREAM:
			// The example design streaming master functionality starts
			// when the master drives output tdata from the FIFO and the slave
			// has finished storing the S_AXIS_TDATA
			if (tx_done)
			begin
				mst_exec_state <= IDLE;
			end
			else
			begin
				mst_exec_state <= SEND_STREAM;
			end
		endcase
	end


	//tvalid generation
	//axis_tvalid is asserted when the control state machine's state is SEND_STREAM and
	//number of output streaming data is less than the K.
	assign axis_tvalid = ((mst_exec_state == SEND_STREAM) && (read_pointer < K));

	// AXI tlast generation
	// axis_tlast is asserted number of output streaming data is K-1
	// (0 to K-1)
	assign axis_tlast = (read_pointer == K-1);

	// Delay the axis_tvalid and axis_tlast signal by one clock cycle
	// to match the latency of M_AXIS_TDATA
	always @(posedge M_AXIS_ACLK)
	begin
		if (!M_AXIS_ARESETN)
		begin
			axis_tvalid_delay <= 1'b0;
			axis_tlast_delay <= 1'b0;
		end
		else
		begin
			axis_tvalid_delay <= axis_tvalid;
			axis_tlast_delay <= axis_tlast;
		end
	end


	//read_pointer pointer

	always@(posedge M_AXIS_ACLK)
	begin
		if(!M_AXIS_ARESETN)
		begin
			read_pointer <= 0;
			tx_done <= 1'b0;
		end
		else
		begin
			if (read_pointer <= K-1)
			begin
				if (tx_en)
				// read pointer is incremented after every read from the FIFO
				// when FIFO read signal is enabled.
				begin
					read_pointer <= read_pointer + 1;
					tx_done <= 1'b0;
				end
			end
			else if (read_pointer == K)
			begin
				// tx_done is asserted when K numbers of streaming data
				// has been out.
				tx_done <= 1'b1;
			end
		end
	end

	//write_pointer pointer

	always@(posedge M_AXIS_ACLK)
	begin
		if(!M_AXIS_ARESETN)
		begin
			write_pointer <= 0;
		end
		else
		begin
			if (wr_en && write_pointer <= K-1)
			begin
				write_pointer <= write_pointer + 1;
			end
		end
	end


	//FIFO read enable generation

	assign tx_en = M_AXIS_TREADY && axis_tvalid;

	// Streaming output data is read from FIFO
	always @( posedge M_AXIS_ACLK )
	begin
		if(!M_AXIS_ARESETN)
		begin
			stream_data_out <= 0;
		end
		else if (tx_en)// && M_AXIS_TSTRB[byte_index]
		begin
			stream_data_out <= FIFO[read_pointer];
		end
	end

	// Add user logic here
	always @( posedge M_AXIS_ACLK )
	begin
		if(!M_AXIS_ARESETN)
		begin
			for(i = 0; i < K; i = i + 1)
			begin
				FIFO[i] <= 0;
			end
		end
		else if (wr_en)// && M_AXIS_TSTRB[byte_index]
		begin
			FIFO[write_pointer] <= AXIS_data;
		end
	end
	// User logic ends

	endmodule
