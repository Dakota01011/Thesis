## This file is a general .xdc for the ZYBO Rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used signals according to the project

##Clock signal
##IO_L11P_T1_SRCC_35
#set_property PACKAGE_PIN L16 [get_ports clk]
#set_property IOSTANDARD LVCMOS33 [get_ports clk]
#create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports clk]

##Switches
##IO_L19N_T3_VREF_35
#set_property PACKAGE_PIN G15 [get_ports {sw[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[0]}]

##IO_L24P_T3_34
#set_property PACKAGE_PIN P15 [get_ports {sw[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[1]}]

##IO_L4N_T0_34
#set_property PACKAGE_PIN W13 [get_ports {sw[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[2]}]

##IO_L9P_T1_DQS_34
#set_property PACKAGE_PIN T16 [get_ports {sw[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {sw[3]}]

##Buttons
##IO_L20N_T3_34
#set_property PACKAGE_PIN R18 [get_ports {btn[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {btn[0]}]

##IO_L24N_T3_34
#set_property PACKAGE_PIN P16 [get_ports {btn[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {btn[1]}]

##IO_L18P_T2_34
#set_property PACKAGE_PIN V16 [get_ports {btn[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {btn[2]}]

##IO_L7P_T1_34
#set_property PACKAGE_PIN Y16 [get_ports {btn[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {btn[3]}]

##LEDs
##IO_L23P_T3_35
#set_property PACKAGE_PIN M14 [get_ports {led[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]

##IO_L23N_T3_35
#set_property PACKAGE_PIN M15 [get_ports {led[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]

##IO_0_35
#set_property PACKAGE_PIN G14 [get_ports {led[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]

##IO_L3N_T0_DQS_AD1N_35
#set_property PACKAGE_PIN D18 [get_ports {led[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]

##I2S Audio Codec
##IO_L12N_T1_MRCC_35
#set_property PACKAGE_PIN K18 [get_ports ac_bclk]
#set_property IOSTANDARD LVCMOS33 [get_ports ac_bclk]

##IO_25_34
#set_property PACKAGE_PIN T19 [get_ports ac_mclk]
#set_property IOSTANDARD LVCMOS33 [get_ports ac_mclk]

##IO_L23N_T3_34
#set_property PACKAGE_PIN P18 [get_ports ac_muten]
#set_property IOSTANDARD LVCMOS33 [get_ports ac_muten]

##IO_L8P_T1_AD10P_35
#set_property PACKAGE_PIN M17 [get_ports ac_pbdat]
#set_property IOSTANDARD LVCMOS33 [get_ports ac_pbdat]

##IO_L11N_T1_SRCC_35
#set_property PACKAGE_PIN L17 [get_ports ac_pblrc]
#set_property IOSTANDARD LVCMOS33 [get_ports ac_pblrc]

##IO_L12P_T1_MRCC_35
#set_property PACKAGE_PIN K17 [get_ports ac_recdat]
#set_property IOSTANDARD LVCMOS33 [get_ports ac_recdat]

##IO_L8N_T1_AD10N_35
#set_property PACKAGE_PIN M18 [get_ports ac_reclrc]
#set_property IOSTANDARD LVCMOS33 [get_ports ac_reclrc]

##Audio Codec/external EEPROM IIC bus
##IO_L13P_T2_MRCC_34
#set_property PACKAGE_PIN N18 [get_ports ac_scl]
#set_property IOSTANDARD LVCMOS33 [get_ports ac_scl]

##IO_L23P_T3_34
#set_property PACKAGE_PIN N17 [get_ports ac_sda]
#set_property IOSTANDARD LVCMOS33 [get_ports ac_sda]

##Additional Ethernet signals
##IO_L6P_T0_35
#set_property PACKAGE_PIN F16 [get_ports eth_int_b]
#set_property IOSTANDARD LVCMOS33 [get_ports eth_int_b]

##IO_L3P_T0_DQS_AD1P_35
#set_property PACKAGE_PIN E17 [get_ports eth_rst_b]
#set_property IOSTANDARD LVCMOS33 [get_ports eth_rst_b]

##HDMI Signals
##IO_L13N_T2_MRCC_35
#set_property PACKAGE_PIN H17 [get_ports hdmi_clk_n]
#set_property IOSTANDARD TMDS_33 [get_ports hdmi_clk_n]

##IO_L13P_T2_MRCC_35
#set_property PACKAGE_PIN H16 [get_ports hdmi_clk_p]
#set_property IOSTANDARD TMDS_33 [get_ports hdmi_clk_p]

##IO_L4N_T0_35
#set_property PACKAGE_PIN D20 [get_ports {hdmi_d_n[0]}]
#set_property IOSTANDARD TMDS_33 [get_ports {hdmi_d_n[0]}]

##IO_L4P_T0_35
#set_property PACKAGE_PIN D19 [get_ports {hdmi_d_p[0]}]
#set_property IOSTANDARD TMDS_33 [get_ports {hdmi_d_p[0]}]

##IO_L1N_T0_AD0N_35
#set_property PACKAGE_PIN B20 [get_ports {hdmi_d_n[1]}]
#set_property IOSTANDARD TMDS_33 [get_ports {hdmi_d_n[1]}]

##IO_L1P_T0_AD0P_35
#set_property PACKAGE_PIN C20 [get_ports {hdmi_d_p[1]}]
#set_property IOSTANDARD TMDS_33 [get_ports {hdmi_d_p[1]}]

##IO_L2N_T0_AD8N_35
#set_property PACKAGE_PIN A20 [get_ports {hdmi_d_n[2]}]
#set_property IOSTANDARD TMDS_33 [get_ports {hdmi_d_n[2]}]

##IO_L2P_T0_AD8P_35
#set_property PACKAGE_PIN B19 [get_ports {hdmi_d_p[2]}]
#set_property IOSTANDARD TMDS_33 [get_ports {hdmi_d_p[2]}]

##IO_L5N_T0_AD9N_35
#set_property PACKAGE_PIN E19 [get_ports hdmi_cec]
#set_property IOSTANDARD LVCMOS33 [get_ports hdmi_cec]

##IO_L5P_T0_AD9P_35
#set_property PACKAGE_PIN E18 [get_ports hdmi_hpd]
#set_property IOSTANDARD LVCMOS33 [get_ports hdmi_hpd]

##IO_L6N_T0_VREF_35
#set_property PACKAGE_PIN F17 [get_ports hdmi_out_en]
#set_property IOSTANDARD LVCMOS33 [get_ports hdmi_out_en]

##IO_L16P_T2_35
#set_property PACKAGE_PIN G17 [get_ports hdmi_scl]
#set_property IOSTANDARD LVCMOS33 [get_ports hdmi_scl]

##IO_L16N_T2_35
#set_property PACKAGE_PIN G18 [get_ports hdmi_sda]
#set_property IOSTANDARD LVCMOS33 [get_ports hdmi_sda]

##Pmod Header JA (XADC)
##IO_L21N_T3_DQS_AD14N_35
#set_property PACKAGE_PIN N16 [get_ports {ja_n[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {ja_n[0]}]

##IO_L21P_T3_DQS_AD14P_35
#set_property PACKAGE_PIN N15 [get_ports {ja_p[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {ja_p[0]}]

##IO_L22N_T3_AD7N_35
#set_property PACKAGE_PIN L15 [get_ports {ja_n[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {ja_n[1]}]

##IO_L22P_T3_AD7P_35
#set_property PACKAGE_PIN L14 [get_ports {ja_p[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {ja_p[1]}]

##IO_L24N_T3_AD15N_35
#set_property PACKAGE_PIN J16 [get_ports {ja_n[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {ja_n[2]}]

##IO_L24P_T3_AD15P_35
#set_property PACKAGE_PIN K16 [get_ports {ja_p[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {ja_p[2]}]

##IO_L20N_T3_AD6N_35
#set_property PACKAGE_PIN J14 [get_ports {ja_n[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {ja_n[3]}]

##IO_L20P_T3_AD6P_35
#set_property PACKAGE_PIN K14 [get_ports {ja_p[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {ja_p[3]}]

##Pmod Header JB
##IO_L15N_T2_DQS_34
#set_property PACKAGE_PIN U20 [get_ports clk_out]
#set_property IOSTANDARD LVCMOS33 [get_ports clk_out]

# #IO_L15P_T2_DQS_34
# set_property PACKAGE_PIN T20 [get_ports reset_out]
# set_property IOSTANDARD LVCMOS33 [get_ports reset_out]

# #IO_L16N_T2_34
# set_property PACKAGE_PIN W20 [get_ports done_out]
# set_property IOSTANDARD LVCMOS33 [get_ports done_out]

# #IO_L16P_T2_34
# set_property PACKAGE_PIN V20 [get_ports loadRef_out]
# set_property IOSTANDARD LVCMOS33 [get_ports loadRef_out]

# #IO_L17N_T2_34
# set_property PACKAGE_PIN Y19 [get_ports {k_out[0]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {k_out[0]}]

# #IO_L17P_T2_34
# set_property PACKAGE_PIN Y18 [get_ports {k_out[1]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {k_out[1]}]

# #IO_L22N_T3_34
# set_property PACKAGE_PIN W19 [get_ports {k_out[2]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {k_out[2]}]

# #IO_L22P_T3_34
# set_property PACKAGE_PIN W18 [get_ports {k_out[3]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {k_out[3]}]

# #Pmod Header JC
# #IO_L10N_T1_34
# set_property PACKAGE_PIN W15 [get_ports {refDataIn_out[0]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {refDataIn_out[0]}]

# #IO_L10P_T1_34
# set_property PACKAGE_PIN V15 [get_ports {refDataIn_out[1]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {refDataIn_out[1]}]

# #IO_L1N_T0_34
# set_property PACKAGE_PIN T10 [get_ports {refDataIn_out[2]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {refDataIn_out[2]}]

# #IO_L1P_T0_34
# set_property PACKAGE_PIN T11 [get_ports {refDataIn_out[3]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {refDataIn_out[3]}]

# #IO_L8N_T1_34
# set_property PACKAGE_PIN Y14 [get_ports {dataValueIn_out[0]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {dataValueIn_out[0]}]

# #IO_L8P_T1_34
# set_property PACKAGE_PIN W14 [get_ports {dataValueIn_out[1]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {dataValueIn_out[1]}]

# #IO_L2N_T0_34
# set_property PACKAGE_PIN U12 [get_ports {dataValueIn_out[2]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {dataValueIn_out[2]}]

# #IO_L2P_T0_34
# set_property PACKAGE_PIN T12 [get_ports {dataValueIn_out[3]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {dataValueIn_out[3]}]

# #Pmod Header JD
# #IO_L5N_T0_34
# set_property PACKAGE_PIN T15 [get_ports {dataNameIn_out[0]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {dataNameIn_out[0]}]

# #IO_L5P_T0_34
# set_property PACKAGE_PIN T14 [get_ports {dataNameIn_out[1]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {dataNameIn_out[1]}]

# #IO_L6N_T0_VREF_34
# set_property PACKAGE_PIN R14 [get_ports {dataNameIn_out[2]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {dataNameIn_out[2]}]

# #IO_L6P_T0_34
# set_property PACKAGE_PIN P14 [get_ports {dataNameIn_out[3]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {dataNameIn_out[3]}]

##IO_L11N_T1_SRCC_34
#set_property PACKAGE_PIN U15 [get_ports {jd_n[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jd_n[2]}]

##IO_L11P_T1_SRCC_34
#set_property PACKAGE_PIN U14 [get_ports {jd_p[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jd_p[2]}]

##IO_L21N_T3_DQS_34
#set_property PACKAGE_PIN V18 [get_ports {jd_n[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jd_n[3]}]

##IO_L21P_T3_DQS_34
#set_property PACKAGE_PIN V17 [get_ports {jd_p[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {jd_p[3]}]

##Pmod Header JE
##IO_L4P_T0_34
#set_property PACKAGE_PIN V12 [get_ports {clk_out}]
#set_property IOSTANDARD LVCMOS33 [get_ports {clk_out}]

##IO_L18N_T2_34
#set_property PACKAGE_PIN W16 [get_ports {je[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {je[1]}]

##IO_25_35
#set_property PACKAGE_PIN J15 [get_ports {je[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {je[2]}]

##IO_L19P_T3_35
#set_property PACKAGE_PIN H15 [get_ports {je[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {je[3]}]

##IO_L3N_T0_DQS_34
#set_property PACKAGE_PIN V13 [get_ports {je[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {je[4]}]

##IO_L9N_T1_DQS_34
#set_property PACKAGE_PIN U17 [get_ports {je[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {je[5]}]

##IO_L20P_T3_34
#set_property PACKAGE_PIN T17 [get_ports {je[6]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {je[6]}]

##IO_L7N_T1_34
#set_property PACKAGE_PIN Y17 [get_ports {je[7]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {je[7]}]


##USB-OTG overcurrent detect pin
##IO_L3P_T0_DQS_PUDC_B_34
#set_property PACKAGE_PIN U13 [get_ports otg_oc]
#set_property IOSTANDARD LVCMOS33 [get_ports otg_oc]


##VGA Connector
##IO_L7P_T1_AD2P_35
#set_property PACKAGE_PIN M19 [get_ports {vga_r[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[0]}]

##IO_L9N_T1_DQS_AD3N_35
#set_property PACKAGE_PIN L20 [get_ports {vga_r[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[1]}]

##IO_L17P_T2_AD5P_35
#set_property PACKAGE_PIN J20 [get_ports {vga_r[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[2]}]

##IO_L18N_T2_AD13N_35
#set_property PACKAGE_PIN G20 [get_ports {vga_r[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[3]}]

##IO_L15P_T2_DQS_AD12P_35
#set_property PACKAGE_PIN F19 [get_ports {vga_r[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_r[4]}]

##IO_L14N_T2_AD4N_SRCC_35
#set_property PACKAGE_PIN H18 [get_ports {vga_g[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[0]}]

##IO_L14P_T2_SRCC_34
#set_property PACKAGE_PIN N20 [get_ports {vga_g[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[1]}]

##IO_L9P_T1_DQS_AD3P_35
#set_property PACKAGE_PIN L19 [get_ports {vga_g[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[2]}]

##IO_L10N_T1_AD11N_35
#set_property PACKAGE_PIN J19 [get_ports {vga_g[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[3]}]

##IO_L17N_T2_AD5N_35
#set_property PACKAGE_PIN H20 [get_ports {vga_g[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[4]}]

##IO_L15N_T2_DQS_AD12N_35
#set_property PACKAGE_PIN F20 [get_ports {vga_g[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_g[5]}]

##IO_L14N_T2_SRCC_34
#set_property PACKAGE_PIN P20 [get_ports {vga_b[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[0]}]

##IO_L7N_T1_AD2N_35
#set_property PACKAGE_PIN M20 [get_ports {vga_b[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[1]}]

##IO_L10P_T1_AD11P_35
#set_property PACKAGE_PIN K19 [get_ports {vga_b[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[2]}]

##IO_L14P_T2_AD4P_SRCC_35
#set_property PACKAGE_PIN J18 [get_ports {vga_b[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[3]}]

##IO_L18P_T2_AD13P_35
#set_property PACKAGE_PIN G19 [get_ports {vga_b[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {vga_b[4]}]

##IO_L13N_T2_MRCC_34
#set_property PACKAGE_PIN P19 [get_ports vga_hs]
#set_property IOSTANDARD LVCMOS33 [get_ports vga_hs]

##IO_0_34
#set_property PACKAGE_PIN R19 [get_ports vga_vs]
#set_property IOSTANDARD LVCMOS33 [get_ports vga_vs]








create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list design_1_i/processing_system7_0/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 32 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[0]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[1]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[2]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[3]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[4]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[5]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[6]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[7]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[8]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[9]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[10]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[11]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[12]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[13]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[14]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[15]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[16]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[17]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[18]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[19]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[20]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[21]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[22]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[23]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[24]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[25]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[26]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[27]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[28]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[29]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[30]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueIn[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 32 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[0]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[1]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[2]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[3]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[4]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[5]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[6]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[7]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[8]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[9]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[10]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[11]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[12]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[13]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[14]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[15]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[16]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[17]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[18]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[19]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[20]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[21]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[22]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[23]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[24]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[25]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[26]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[27]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[28]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[29]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[30]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 32 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[0]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[1]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[2]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[3]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[4]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[5]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[6]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[7]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[8]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[9]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[10]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[11]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[12]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[13]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[14]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[15]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[16]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[17]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[18]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[19]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[20]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[21]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[22]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[23]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[24]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[25]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[26]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[27]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[28]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[29]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[30]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/k[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 32 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[0]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[1]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[2]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[3]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[4]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[5]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[6]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[7]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[8]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[9]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[10]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[11]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[12]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[13]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[14]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[15]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[16]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[17]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[18]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[19]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[20]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[21]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[22]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[23]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[24]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[25]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[26]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[27]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[28]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[29]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[30]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 2 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {design_1_i/processing_system7_0_axi_periph_M00_AXI_RRESP[0]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RRESP[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 32 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[0]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[1]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[2]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[3]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[4]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[5]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[6]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[7]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[8]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[9]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[10]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[11]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[12]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[13]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[14]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[15]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[16]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[17]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[18]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[19]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[20]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[21]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[22]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[23]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[24]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[25]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[26]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[27]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[28]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[29]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[30]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_RDATA[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 32 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[0]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[1]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[2]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[3]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[4]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[5]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[6]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[7]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[8]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[9]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[10]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[11]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[12]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[13]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[14]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[15]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[16]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[17]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[18]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[19]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[20]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[21]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[22]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[23]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[24]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[25]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[26]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[27]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[28]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[29]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[30]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WDATA[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 4 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {design_1_i/processing_system7_0_axi_periph_M00_AXI_WSTRB[0]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WSTRB[1]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WSTRB[2]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_WSTRB[3]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 3 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARPROT[0]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARPROT[1]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARPROT[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 32 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[0]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[1]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[2]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[3]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[4]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[5]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[6]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[7]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[8]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[9]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[10]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[11]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[12]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[13]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[14]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[15]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[16]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[17]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[18]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[19]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[20]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[21]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[22]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[23]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[24]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[25]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[26]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[27]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[28]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[29]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[30]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_ARADDR[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 2 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list {design_1_i/processing_system7_0_axi_periph_M00_AXI_BRESP[0]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_BRESP[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 32 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[0]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[1]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[2]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[3]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[4]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[5]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[6]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[7]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[8]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[9]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[10]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[11]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[12]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[13]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[14]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[15]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[16]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[17]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[18]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[19]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[20]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[21]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[22]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[23]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[24]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[25]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[26]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[27]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[28]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[29]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[30]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWADDR[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 3 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWPROT[0]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWPROT[1]} {design_1_i/processing_system7_0_axi_periph_M00_AXI_AWPROT[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/done]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/mclk]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list design_1_i/processing_system7_0_axi_periph_M00_AXI_ARREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list design_1_i/processing_system7_0_axi_periph_M00_AXI_ARVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list design_1_i/processing_system7_0_axi_periph_M00_AXI_AWREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list design_1_i/processing_system7_0_axi_periph_M00_AXI_AWVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list design_1_i/processing_system7_0_axi_periph_M00_AXI_BREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 1 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list design_1_i/processing_system7_0_axi_periph_M00_AXI_BVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 1 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list design_1_i/processing_system7_0_axi_periph_M00_AXI_RREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe22]
set_property port_width 1 [get_debug_ports u_ila_0/probe22]
connect_debug_port u_ila_0/probe22 [get_nets [list design_1_i/processing_system7_0_axi_periph_M00_AXI_RVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe23]
set_property port_width 1 [get_debug_ports u_ila_0/probe23]
connect_debug_port u_ila_0/probe23 [get_nets [list design_1_i/processing_system7_0_axi_periph_M00_AXI_WREADY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe24]
set_property port_width 1 [get_debug_ports u_ila_0/probe24]
connect_debug_port u_ila_0/probe24 [get_nets [list design_1_i/processing_system7_0_axi_periph_M00_AXI_WVALID]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe25]
set_property port_width 1 [get_debug_ports u_ila_0/probe25]
connect_debug_port u_ila_0/probe25 [get_nets [list design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/rd_en]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe26]
set_property port_width 1 [get_debug_ports u_ila_0/probe26]
connect_debug_port u_ila_0/probe26 [get_nets [list design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/reset]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe27]
set_property port_width 1 [get_debug_ports u_ila_0/probe27]
connect_debug_port u_ila_0/probe27 [get_nets [list design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/start]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe28]
set_property port_width 1 [get_debug_ports u_ila_0/probe28]
connect_debug_port u_ila_0/probe28 [get_nets [list design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/wr_en]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
