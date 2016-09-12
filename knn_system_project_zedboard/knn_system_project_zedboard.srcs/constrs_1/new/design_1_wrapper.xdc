


create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 2048 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list design_1_i/processing_system7_0/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 32 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[32]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[33]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[34]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[35]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[36]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[37]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[38]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[39]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[40]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[41]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[42]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[43]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[44]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[45]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[46]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[47]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[48]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[49]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[50]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[51]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[52]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[53]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[54]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[55]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[56]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[57]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[58]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[59]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[60]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[61]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[62]} {design_1_i/axi_dma_0_M_AXIS_MM2S_TDATA[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 1 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list design_1_i/axi_dma_0_M_AXIS_MM2S_TLAST]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list design_1_i/axi_dma_0_M_AXIS_MM2S_TREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list design_1_i/axi_dma_0_M_AXIS_MM2S_TVALID]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
