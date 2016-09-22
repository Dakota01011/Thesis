create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 8192 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list design_1_i/processing_system7_0/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 3 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {design_1_i/axi_mem_intercon_1_M00_AXI_AWSIZE[0]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWSIZE[1]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWSIZE[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 4 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {design_1_i/axi_mem_intercon_1_M00_AXI_AWLEN[0]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWLEN[1]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWLEN[2]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWLEN[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 2 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {design_1_i/axi_mem_intercon_1_M00_AXI_AWBURST[0]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWBURST[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 4 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {design_1_i/axi_dma_0_M_AXI_S2MM_AWCACHE[0]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWCACHE[1]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWCACHE[2]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWCACHE[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 4 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {design_1_i/axi_mem_intercon_1_M00_AXI_WSTRB[0]} {design_1_i/axi_mem_intercon_1_M00_AXI_WSTRB[1]} {design_1_i/axi_mem_intercon_1_M00_AXI_WSTRB[2]} {design_1_i/axi_mem_intercon_1_M00_AXI_WSTRB[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 4 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {design_1_i/axi_dma_0_M_AXI_S2MM_WSTRB[0]} {design_1_i/axi_dma_0_M_AXI_S2MM_WSTRB[1]} {design_1_i/axi_dma_0_M_AXI_S2MM_WSTRB[2]} {design_1_i/axi_dma_0_M_AXI_S2MM_WSTRB[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 2 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {design_1_i/axi_mem_intercon_1_M00_AXI_BRESP[0]} {design_1_i/axi_mem_intercon_1_M00_AXI_BRESP[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 32 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[0]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[1]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[2]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[3]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[4]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[5]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[6]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[7]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[8]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[9]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[10]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[11]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[12]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[13]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[14]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[15]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[16]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[17]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[18]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[19]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[20]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[21]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[22]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[23]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[24]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[25]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[26]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[27]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[28]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[29]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[30]} {design_1_i/axi_dma_0_M_AXI_S2MM_WDATA[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 2 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {design_1_i/axi_dma_0_M_AXI_S2MM_BRESP[0]} {design_1_i/axi_dma_0_M_AXI_S2MM_BRESP[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 32 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[0]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[1]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[2]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[3]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[4]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[5]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[6]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[7]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[8]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[9]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[10]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[11]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[12]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[13]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[14]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[15]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[16]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[17]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[18]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[19]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[20]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[21]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[22]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[23]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[24]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[25]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[26]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[27]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[28]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[29]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[30]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWADDR[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 32 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[0]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[1]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[2]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[3]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[4]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[5]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[6]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[7]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[8]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[9]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[10]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[11]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[12]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[13]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[14]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[15]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[16]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[17]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[18]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[19]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[20]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[21]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[22]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[23]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[24]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[25]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[26]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[27]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[28]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[29]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[30]} {design_1_i/axi_mem_intercon_1_M00_AXI_WDATA[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 2 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list {design_1_i/axi_mem_intercon_1_M00_AXI_AWLOCK[0]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWLOCK[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 3 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list {design_1_i/axi_dma_0_M_AXI_S2MM_AWPROT[0]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWPROT[1]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWPROT[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 32 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list {design_1_i/KNN_accelerator_1_m00_axis_tdata[0]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[1]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[2]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[3]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[4]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[5]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[6]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[7]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[8]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[9]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[10]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[11]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[12]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[13]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[14]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[15]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[16]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[17]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[18]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[19]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[20]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[21]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[22]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[23]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[24]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[25]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[26]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[27]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[28]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[29]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[30]} {design_1_i/KNN_accelerator_1_m00_axis_tdata[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 3 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list {design_1_i/axi_mem_intercon_1_M00_AXI_AWPROT[0]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWPROT[1]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWPROT[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 4 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list {design_1_i/axi_mem_intercon_1_M00_AXI_AWQOS[0]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWQOS[1]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWQOS[2]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWQOS[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 3 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list {design_1_i/axi_dma_0_M_AXI_S2MM_AWSIZE[0]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWSIZE[1]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWSIZE[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 4 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list {design_1_i/KNN_accelerator_1_m00_axis_tstrb[0]} {design_1_i/KNN_accelerator_1_m00_axis_tstrb[1]} {design_1_i/KNN_accelerator_1_m00_axis_tstrb[2]} {design_1_i/KNN_accelerator_1_m00_axis_tstrb[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 32 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[0]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[1]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[2]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[3]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[4]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[5]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[6]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[7]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[8]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[9]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[10]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[11]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[12]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[13]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[14]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[15]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[16]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[17]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[18]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[19]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[20]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[21]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[22]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[23]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[24]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[25]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[26]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[27]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[28]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[29]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[30]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWADDR[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 2 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list {design_1_i/axi_dma_0_M_AXI_S2MM_AWBURST[0]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWBURST[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 4 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list {design_1_i/axi_mem_intercon_1_M00_AXI_AWCACHE[0]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWCACHE[1]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWCACHE[2]} {design_1_i/axi_mem_intercon_1_M00_AXI_AWCACHE[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 8 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list {design_1_i/axi_dma_0_M_AXI_S2MM_AWLEN[0]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWLEN[1]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWLEN[2]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWLEN[3]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWLEN[4]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWLEN[5]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWLEN[6]} {design_1_i/axi_dma_0_M_AXI_S2MM_AWLEN[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe22]
set_property port_width 32 [get_debug_ports u_ila_0/probe22]
connect_debug_port u_ila_0/probe22 [get_nets [list {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[0]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[1]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[2]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[3]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[4]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[5]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[6]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[7]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[8]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[9]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[10]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[11]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[12]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[13]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[14]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[15]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[16]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[17]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[18]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[19]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[20]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[21]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[22]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[23]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[24]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[25]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[26]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[27]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[28]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[29]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[30]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tdata[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe23]
set_property port_width 4 [get_debug_ports u_ila_0/probe23]
connect_debug_port u_ila_0/probe23 [get_nets [list {design_1_i/KNN_accelerator_1/inst/m00_axis_tstrb[0]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tstrb[1]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tstrb[2]} {design_1_i/KNN_accelerator_1/inst/m00_axis_tstrb[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe24]
set_property port_width 1 [get_debug_ports u_ila_0/probe24]
connect_debug_port u_ila_0/probe24 [get_nets [list design_1_i/axi_dma_0_M_AXI_S2MM_AWREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe25]
set_property port_width 1 [get_debug_ports u_ila_0/probe25]
connect_debug_port u_ila_0/probe25 [get_nets [list design_1_i/axi_dma_0_M_AXI_S2MM_AWVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe26]
set_property port_width 1 [get_debug_ports u_ila_0/probe26]
connect_debug_port u_ila_0/probe26 [get_nets [list design_1_i/axi_dma_0_M_AXI_S2MM_BREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe27]
set_property port_width 1 [get_debug_ports u_ila_0/probe27]
connect_debug_port u_ila_0/probe27 [get_nets [list design_1_i/axi_dma_0_M_AXI_S2MM_BVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe28]
set_property port_width 1 [get_debug_ports u_ila_0/probe28]
connect_debug_port u_ila_0/probe28 [get_nets [list design_1_i/axi_dma_0_M_AXI_S2MM_WLAST]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe29]
set_property port_width 1 [get_debug_ports u_ila_0/probe29]
connect_debug_port u_ila_0/probe29 [get_nets [list design_1_i/axi_dma_0_M_AXI_S2MM_WREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe30]
set_property port_width 1 [get_debug_ports u_ila_0/probe30]
connect_debug_port u_ila_0/probe30 [get_nets [list design_1_i/axi_dma_0_M_AXI_S2MM_WVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe31]
set_property port_width 1 [get_debug_ports u_ila_0/probe31]
connect_debug_port u_ila_0/probe31 [get_nets [list design_1_i/axi_dma_0_s_axis_s2mm_tready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe32]
set_property port_width 1 [get_debug_ports u_ila_0/probe32]
connect_debug_port u_ila_0/probe32 [get_nets [list design_1_i/axi_mem_intercon_1_M00_AXI_AWREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe33]
set_property port_width 1 [get_debug_ports u_ila_0/probe33]
connect_debug_port u_ila_0/probe33 [get_nets [list design_1_i/axi_mem_intercon_1_M00_AXI_AWVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe34]
set_property port_width 1 [get_debug_ports u_ila_0/probe34]
connect_debug_port u_ila_0/probe34 [get_nets [list design_1_i/axi_mem_intercon_1_M00_AXI_BREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe35]
set_property port_width 1 [get_debug_ports u_ila_0/probe35]
connect_debug_port u_ila_0/probe35 [get_nets [list design_1_i/axi_mem_intercon_1_M00_AXI_BVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe36]
set_property port_width 1 [get_debug_ports u_ila_0/probe36]
connect_debug_port u_ila_0/probe36 [get_nets [list design_1_i/axi_mem_intercon_1_M00_AXI_WLAST]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe37]
set_property port_width 1 [get_debug_ports u_ila_0/probe37]
connect_debug_port u_ila_0/probe37 [get_nets [list design_1_i/axi_mem_intercon_1_M00_AXI_WREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe38]
set_property port_width 1 [get_debug_ports u_ila_0/probe38]
connect_debug_port u_ila_0/probe38 [get_nets [list design_1_i/axi_mem_intercon_1_M00_AXI_WVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe39]
set_property port_width 1 [get_debug_ports u_ila_0/probe39]
connect_debug_port u_ila_0/probe39 [get_nets [list design_1_i/KNN_accelerator_1_m00_axis_tlast]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe40]
set_property port_width 1 [get_debug_ports u_ila_0/probe40]
connect_debug_port u_ila_0/probe40 [get_nets [list design_1_i/KNN_accelerator_1_m00_axis_tvalid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe41]
set_property port_width 1 [get_debug_ports u_ila_0/probe41]
connect_debug_port u_ila_0/probe41 [get_nets [list design_1_i/KNN_accelerator_1/inst/m00_axis_aclk]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe42]
set_property port_width 1 [get_debug_ports u_ila_0/probe42]
connect_debug_port u_ila_0/probe42 [get_nets [list design_1_i/KNN_accelerator_1/inst/m00_axis_aresetn]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe43]
set_property port_width 1 [get_debug_ports u_ila_0/probe43]
connect_debug_port u_ila_0/probe43 [get_nets [list design_1_i/KNN_accelerator_1/inst/m00_axis_tlast]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe44]
set_property port_width 1 [get_debug_ports u_ila_0/probe44]
connect_debug_port u_ila_0/probe44 [get_nets [list design_1_i/KNN_accelerator_1/inst/m00_axis_tready]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe45]
set_property port_width 1 [get_debug_ports u_ila_0/probe45]
connect_debug_port u_ila_0/probe45 [get_nets [list design_1_i/KNN_accelerator_1/inst/m00_axis_tvalid]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
