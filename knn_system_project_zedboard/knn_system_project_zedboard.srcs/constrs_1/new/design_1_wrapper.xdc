create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 4096 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list design_1_i/processing_system7_0/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 2 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {design_1_i/axi_dma_1_M_AXI_MM2S_RRESP[0]} {design_1_i/axi_dma_1_M_AXI_MM2S_RRESP[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 2 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {design_1_i/S00_AXI_1_RRESP[0]} {design_1_i/S00_AXI_1_RRESP[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 4 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {design_1_i/axi_dma_1_M_AXI_MM2S_ARCACHE[0]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARCACHE[1]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARCACHE[2]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARCACHE[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 32 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[0]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[1]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[2]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[3]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[4]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[5]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[6]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[7]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[8]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[9]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[10]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[11]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[12]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[13]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[14]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[15]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[16]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[17]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[18]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[19]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[20]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[21]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[22]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[23]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[24]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[25]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[26]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[27]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[28]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[29]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[30]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARADDR[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 32 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {design_1_i/S00_AXI_1_ARADDR[0]} {design_1_i/S00_AXI_1_ARADDR[1]} {design_1_i/S00_AXI_1_ARADDR[2]} {design_1_i/S00_AXI_1_ARADDR[3]} {design_1_i/S00_AXI_1_ARADDR[4]} {design_1_i/S00_AXI_1_ARADDR[5]} {design_1_i/S00_AXI_1_ARADDR[6]} {design_1_i/S00_AXI_1_ARADDR[7]} {design_1_i/S00_AXI_1_ARADDR[8]} {design_1_i/S00_AXI_1_ARADDR[9]} {design_1_i/S00_AXI_1_ARADDR[10]} {design_1_i/S00_AXI_1_ARADDR[11]} {design_1_i/S00_AXI_1_ARADDR[12]} {design_1_i/S00_AXI_1_ARADDR[13]} {design_1_i/S00_AXI_1_ARADDR[14]} {design_1_i/S00_AXI_1_ARADDR[15]} {design_1_i/S00_AXI_1_ARADDR[16]} {design_1_i/S00_AXI_1_ARADDR[17]} {design_1_i/S00_AXI_1_ARADDR[18]} {design_1_i/S00_AXI_1_ARADDR[19]} {design_1_i/S00_AXI_1_ARADDR[20]} {design_1_i/S00_AXI_1_ARADDR[21]} {design_1_i/S00_AXI_1_ARADDR[22]} {design_1_i/S00_AXI_1_ARADDR[23]} {design_1_i/S00_AXI_1_ARADDR[24]} {design_1_i/S00_AXI_1_ARADDR[25]} {design_1_i/S00_AXI_1_ARADDR[26]} {design_1_i/S00_AXI_1_ARADDR[27]} {design_1_i/S00_AXI_1_ARADDR[28]} {design_1_i/S00_AXI_1_ARADDR[29]} {design_1_i/S00_AXI_1_ARADDR[30]} {design_1_i/S00_AXI_1_ARADDR[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 64 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[0]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[1]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[2]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[3]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[4]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[5]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[6]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[7]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[8]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[9]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[10]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[11]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[12]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[13]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[14]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[15]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[16]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[17]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[18]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[19]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[20]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[21]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[22]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[23]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[24]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[25]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[26]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[27]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[28]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[29]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[30]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[31]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[32]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[33]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[34]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[35]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[36]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[37]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[38]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[39]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[40]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[41]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[42]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[43]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[44]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[45]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[46]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[47]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[48]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[49]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[50]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[51]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[52]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[53]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[54]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[55]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[56]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[57]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[58]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[59]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[60]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[61]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[62]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 4 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {design_1_i/S00_AXI_1_ARCACHE[0]} {design_1_i/S00_AXI_1_ARCACHE[1]} {design_1_i/S00_AXI_1_ARCACHE[2]} {design_1_i/S00_AXI_1_ARCACHE[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 8 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {design_1_i/axi_dma_1_M_AXI_MM2S_ARLEN[0]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARLEN[1]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARLEN[2]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARLEN[3]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARLEN[4]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARLEN[5]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARLEN[6]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARLEN[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 8 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {design_1_i/S00_AXI_1_ARLEN[0]} {design_1_i/S00_AXI_1_ARLEN[1]} {design_1_i/S00_AXI_1_ARLEN[2]} {design_1_i/S00_AXI_1_ARLEN[3]} {design_1_i/S00_AXI_1_ARLEN[4]} {design_1_i/S00_AXI_1_ARLEN[5]} {design_1_i/S00_AXI_1_ARLEN[6]} {design_1_i/S00_AXI_1_ARLEN[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 3 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list {design_1_i/axi_dma_1_M_AXI_MM2S_ARPROT[0]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARPROT[1]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARPROT[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 2 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list {design_1_i/axi_dma_1_M_AXI_MM2S_ARBURST[0]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARBURST[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 3 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list {design_1_i/S00_AXI_1_ARPROT[0]} {design_1_i/S00_AXI_1_ARPROT[1]} {design_1_i/S00_AXI_1_ARPROT[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 2 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list {design_1_i/S00_AXI_1_ARBURST[0]} {design_1_i/S00_AXI_1_ARBURST[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 64 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[0]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[1]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[2]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[3]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[4]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[5]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[6]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[7]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[8]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[9]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[10]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[11]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[12]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[13]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[14]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[15]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[16]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[17]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[18]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[19]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[20]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[21]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[22]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[23]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[24]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[25]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[26]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[27]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[28]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[29]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[30]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[31]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[32]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[33]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[34]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[35]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[36]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[37]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[38]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[39]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[40]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[41]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[42]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[43]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[44]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[45]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[46]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[47]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[48]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[49]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[50]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[51]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[52]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[53]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[54]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[55]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[56]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[57]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[58]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[59]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[60]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[61]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[62]} {design_1_i/axi_dma_1_M_AXIS_MM2S_TDATA[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 3 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list {design_1_i/S00_AXI_1_ARSIZE[0]} {design_1_i/S00_AXI_1_ARSIZE[1]} {design_1_i/S00_AXI_1_ARSIZE[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 64 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list {design_1_i/S00_AXI_1_RDATA[0]} {design_1_i/S00_AXI_1_RDATA[1]} {design_1_i/S00_AXI_1_RDATA[2]} {design_1_i/S00_AXI_1_RDATA[3]} {design_1_i/S00_AXI_1_RDATA[4]} {design_1_i/S00_AXI_1_RDATA[5]} {design_1_i/S00_AXI_1_RDATA[6]} {design_1_i/S00_AXI_1_RDATA[7]} {design_1_i/S00_AXI_1_RDATA[8]} {design_1_i/S00_AXI_1_RDATA[9]} {design_1_i/S00_AXI_1_RDATA[10]} {design_1_i/S00_AXI_1_RDATA[11]} {design_1_i/S00_AXI_1_RDATA[12]} {design_1_i/S00_AXI_1_RDATA[13]} {design_1_i/S00_AXI_1_RDATA[14]} {design_1_i/S00_AXI_1_RDATA[15]} {design_1_i/S00_AXI_1_RDATA[16]} {design_1_i/S00_AXI_1_RDATA[17]} {design_1_i/S00_AXI_1_RDATA[18]} {design_1_i/S00_AXI_1_RDATA[19]} {design_1_i/S00_AXI_1_RDATA[20]} {design_1_i/S00_AXI_1_RDATA[21]} {design_1_i/S00_AXI_1_RDATA[22]} {design_1_i/S00_AXI_1_RDATA[23]} {design_1_i/S00_AXI_1_RDATA[24]} {design_1_i/S00_AXI_1_RDATA[25]} {design_1_i/S00_AXI_1_RDATA[26]} {design_1_i/S00_AXI_1_RDATA[27]} {design_1_i/S00_AXI_1_RDATA[28]} {design_1_i/S00_AXI_1_RDATA[29]} {design_1_i/S00_AXI_1_RDATA[30]} {design_1_i/S00_AXI_1_RDATA[31]} {design_1_i/S00_AXI_1_RDATA[32]} {design_1_i/S00_AXI_1_RDATA[33]} {design_1_i/S00_AXI_1_RDATA[34]} {design_1_i/S00_AXI_1_RDATA[35]} {design_1_i/S00_AXI_1_RDATA[36]} {design_1_i/S00_AXI_1_RDATA[37]} {design_1_i/S00_AXI_1_RDATA[38]} {design_1_i/S00_AXI_1_RDATA[39]} {design_1_i/S00_AXI_1_RDATA[40]} {design_1_i/S00_AXI_1_RDATA[41]} {design_1_i/S00_AXI_1_RDATA[42]} {design_1_i/S00_AXI_1_RDATA[43]} {design_1_i/S00_AXI_1_RDATA[44]} {design_1_i/S00_AXI_1_RDATA[45]} {design_1_i/S00_AXI_1_RDATA[46]} {design_1_i/S00_AXI_1_RDATA[47]} {design_1_i/S00_AXI_1_RDATA[48]} {design_1_i/S00_AXI_1_RDATA[49]} {design_1_i/S00_AXI_1_RDATA[50]} {design_1_i/S00_AXI_1_RDATA[51]} {design_1_i/S00_AXI_1_RDATA[52]} {design_1_i/S00_AXI_1_RDATA[53]} {design_1_i/S00_AXI_1_RDATA[54]} {design_1_i/S00_AXI_1_RDATA[55]} {design_1_i/S00_AXI_1_RDATA[56]} {design_1_i/S00_AXI_1_RDATA[57]} {design_1_i/S00_AXI_1_RDATA[58]} {design_1_i/S00_AXI_1_RDATA[59]} {design_1_i/S00_AXI_1_RDATA[60]} {design_1_i/S00_AXI_1_RDATA[61]} {design_1_i/S00_AXI_1_RDATA[62]} {design_1_i/S00_AXI_1_RDATA[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 3 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list {design_1_i/axi_dma_1_M_AXI_MM2S_ARSIZE[0]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARSIZE[1]} {design_1_i/axi_dma_1_M_AXI_MM2S_ARSIZE[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 64 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[0]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[1]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[2]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[3]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[4]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[5]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[6]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[7]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[8]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[9]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[10]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[11]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[12]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[13]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[14]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[15]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[16]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[17]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[18]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[19]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[20]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[21]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[22]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[23]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[24]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[25]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[26]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[27]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[28]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[29]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[30]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[31]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[32]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[33]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[34]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[35]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[36]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[37]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[38]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[39]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[40]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[41]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[42]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[43]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[44]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[45]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[46]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[47]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[48]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[49]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[50]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[51]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[52]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[53]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[54]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[55]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[56]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[57]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[58]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[59]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[60]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[61]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[62]} {design_1_i/axi_dma_1_M_AXI_MM2S_RDATA[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list design_1_i/axi_dma_0_M_AXIS_MM2S_TLAST]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list design_1_i/axi_dma_0_M_AXIS_MM2S_TREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 1 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list design_1_i/axi_dma_0_M_AXIS_MM2S_TVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 1 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list design_1_i/axi_dma_1_M_AXI_MM2S_ARREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe22]
set_property port_width 1 [get_debug_ports u_ila_0/probe22]
connect_debug_port u_ila_0/probe22 [get_nets [list design_1_i/axi_dma_1_M_AXI_MM2S_ARVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe23]
set_property port_width 1 [get_debug_ports u_ila_0/probe23]
connect_debug_port u_ila_0/probe23 [get_nets [list design_1_i/axi_dma_1_M_AXI_MM2S_RLAST]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe24]
set_property port_width 1 [get_debug_ports u_ila_0/probe24]
connect_debug_port u_ila_0/probe24 [get_nets [list design_1_i/axi_dma_1_M_AXI_MM2S_RREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe25]
set_property port_width 1 [get_debug_ports u_ila_0/probe25]
connect_debug_port u_ila_0/probe25 [get_nets [list design_1_i/axi_dma_1_M_AXI_MM2S_RVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe26]
set_property port_width 1 [get_debug_ports u_ila_0/probe26]
connect_debug_port u_ila_0/probe26 [get_nets [list design_1_i/axi_dma_1_M_AXIS_MM2S_TLAST]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe27]
set_property port_width 1 [get_debug_ports u_ila_0/probe27]
connect_debug_port u_ila_0/probe27 [get_nets [list design_1_i/axi_dma_1_M_AXIS_MM2S_TREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe28]
set_property port_width 1 [get_debug_ports u_ila_0/probe28]
connect_debug_port u_ila_0/probe28 [get_nets [list design_1_i/axi_dma_1_M_AXIS_MM2S_TVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe29]
set_property port_width 1 [get_debug_ports u_ila_0/probe29]
connect_debug_port u_ila_0/probe29 [get_nets [list design_1_i/S00_AXI_1_ARREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe30]
set_property port_width 1 [get_debug_ports u_ila_0/probe30]
connect_debug_port u_ila_0/probe30 [get_nets [list design_1_i/S00_AXI_1_ARVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe31]
set_property port_width 1 [get_debug_ports u_ila_0/probe31]
connect_debug_port u_ila_0/probe31 [get_nets [list design_1_i/S00_AXI_1_RLAST]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe32]
set_property port_width 1 [get_debug_ports u_ila_0/probe32]
connect_debug_port u_ila_0/probe32 [get_nets [list design_1_i/S00_AXI_1_RREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe33]
set_property port_width 1 [get_debug_ports u_ila_0/probe33]
connect_debug_port u_ila_0/probe33 [get_nets [list design_1_i/S00_AXI_1_RVALID]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
