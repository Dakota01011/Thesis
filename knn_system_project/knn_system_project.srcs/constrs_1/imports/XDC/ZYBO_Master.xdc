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
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list design_1_i/processing_system7_0/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 33 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[0]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[1]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[2]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[3]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[4]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[5]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[6]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[7]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[8]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[9]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[10]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[11]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[12]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[13]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[14]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[15]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[16]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[17]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[18]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[19]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[20]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[21]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[22]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[23]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[24]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[25]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[26]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[27]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[28]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[29]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[30]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[31]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/difference[32]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 76 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[0]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[1]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[2]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[3]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[4]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[5]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[6]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[7]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[8]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[9]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[10]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[11]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[12]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[13]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[14]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[15]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[16]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[17]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[18]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[19]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[20]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[21]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[22]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[23]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[24]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[25]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[26]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[27]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[28]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[29]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[30]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[31]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[32]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[33]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[34]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[35]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[36]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[37]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[38]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[39]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[40]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[41]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[42]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[43]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[44]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[45]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[46]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[47]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[48]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[49]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[50]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[51]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[52]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[53]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[54]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[55]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[56]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[57]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[58]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[59]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[60]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[61]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[62]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[63]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[64]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[65]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[66]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[67]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[68]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[69]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[70]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[71]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[72]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[73]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[74]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/accumulator[75]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 32 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[0]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[1]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[2]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[3]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[4]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[5]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[6]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[7]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[8]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[9]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[10]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[11]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[12]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[13]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[14]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[15]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[16]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[17]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[18]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[19]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[20]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[21]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[22]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[23]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[24]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[25]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[26]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[27]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[28]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[29]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[30]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/i[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 66 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[0]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[1]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[2]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[3]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[4]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[5]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[6]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[7]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[8]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[9]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[10]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[11]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[12]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[13]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[14]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[15]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[16]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[17]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[18]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[19]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[20]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[21]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[22]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[23]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[24]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[25]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[26]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[27]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[28]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[29]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[30]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[31]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[32]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[33]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[34]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[35]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[36]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[37]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[38]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[39]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[40]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[41]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[42]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[43]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[44]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[45]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[46]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[47]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[48]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[49]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[50]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[51]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[52]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[53]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[54]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[55]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[56]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[57]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[58]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[59]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[60]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[61]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[62]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[63]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[64]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/squared[65]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 32 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][0]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][1]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][2]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][3]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][4]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][5]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][6]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][7]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][8]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][9]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][10]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][11]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][12]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][13]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][14]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][15]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][16]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][17]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][18]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][19]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][20]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][21]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][22]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][23]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][24]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][25]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][26]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][27]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][28]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][29]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][30]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[1][31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 32 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[0]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[1]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[2]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[3]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[4]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[5]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[6]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[7]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[8]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[9]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[10]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[11]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[12]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[13]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[14]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[15]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[16]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[17]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[18]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[19]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[20]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[21]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[22]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[23]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[24]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[25]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[26]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[27]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[28]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[29]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[30]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataNameOut[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 76 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][0]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][1]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][2]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][3]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][4]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][5]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][6]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][7]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][8]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][9]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][10]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][11]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][12]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][13]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][14]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][15]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][16]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][17]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][18]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][19]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][20]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][21]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][22]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][23]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][24]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][25]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][26]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][27]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][28]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][29]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][30]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][31]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][32]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][33]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][34]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][35]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][36]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][37]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][38]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][39]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][40]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][41]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][42]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][43]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][44]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][45]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][46]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][47]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][48]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][49]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][50]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][51]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][52]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][53]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][54]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][55]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][56]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][57]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][58]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][59]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][60]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][61]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][62]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][63]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][64]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][65]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][66]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][67]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][68]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][69]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][70]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][71]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][72]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][73]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][74]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[2][75]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 32 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[0]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[1]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[2]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[3]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[4]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[5]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[6]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[7]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[8]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[9]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[10]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[11]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[12]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[13]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[14]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[15]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[16]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[17]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[18]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[19]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[20]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[21]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[22]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[23]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[24]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[25]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[26]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[27]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[28]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[29]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[30]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/entryId[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 32 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[0]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[1]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[2]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[3]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[4]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[5]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[6]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[7]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[8]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[9]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[10]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[11]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[12]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[13]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[14]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[15]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[16]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[17]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[18]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[19]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[20]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[21]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[22]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[23]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[24]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[25]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[26]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[27]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[28]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[29]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[30]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValueOut[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 32 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[0]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[1]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[2]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[3]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[4]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[5]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[6]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[7]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[8]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[9]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[10]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[11]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[12]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[13]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[14]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[15]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[16]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[17]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[18]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[19]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[20]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[21]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[22]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[23]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[24]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[25]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[26]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[27]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[28]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[29]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[30]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/outputPointer[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 32 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][0]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][1]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][2]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][3]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][4]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][5]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][6]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][7]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][8]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][9]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][10]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][11]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][12]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][13]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][14]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][15]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][16]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][17]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][18]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][19]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][20]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][21]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][22]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][23]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][24]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][25]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][26]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][27]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][28]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][29]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][30]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[2][31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 32 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][0]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][1]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][2]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][3]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][4]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][5]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][6]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][7]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][8]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][9]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][10]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][11]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][12]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][13]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][14]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][15]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][16]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][17]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][18]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][19]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][20]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][21]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][22]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][23]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][24]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][25]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][26]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][27]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][28]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][29]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][30]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/nameMem[0][31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 76 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][0]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][1]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][2]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][3]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][4]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][5]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][6]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][7]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][8]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][9]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][10]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][11]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][12]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][13]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][14]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][15]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][16]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][17]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][18]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][19]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][20]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][21]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][22]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][23]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][24]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][25]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][26]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][27]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][28]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][29]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][30]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][31]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][32]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][33]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][34]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][35]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][36]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][37]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][38]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][39]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][40]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][41]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][42]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][43]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][44]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][45]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][46]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][47]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][48]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][49]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][50]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][51]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][52]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][53]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][54]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][55]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][56]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][57]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][58]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][59]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][60]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][61]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][62]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][63]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][64]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][65]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][66]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][67]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][68]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][69]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][70]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][71]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][72]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][73]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][74]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[1][75]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 76 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[0]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[1]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[2]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[3]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[4]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[5]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[6]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[7]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[8]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[9]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[10]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[11]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[12]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[13]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[14]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[15]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[16]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[17]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[18]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[19]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[20]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[21]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[22]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[23]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[24]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[25]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[26]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[27]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[28]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[29]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[30]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[31]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[32]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[33]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[34]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[35]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[36]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[37]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[38]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[39]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[40]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[41]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[42]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[43]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[44]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[45]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[46]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[47]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[48]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[49]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[50]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[51]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[52]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[53]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[54]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[55]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[56]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[57]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[58]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[59]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[60]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[61]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[62]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[63]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[64]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[65]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[66]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[67]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[68]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[69]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[70]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[71]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[72]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[73]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[74]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distance[75]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 76 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][0]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][1]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][2]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][3]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][4]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][5]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][6]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][7]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][8]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][9]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][10]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][11]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][12]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][13]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][14]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][15]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][16]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][17]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][18]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][19]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][20]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][21]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][22]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][23]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][24]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][25]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][26]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][27]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][28]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][29]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][30]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][31]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][32]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][33]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][34]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][35]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][36]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][37]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][38]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][39]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][40]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][41]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][42]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][43]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][44]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][45]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][46]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][47]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][48]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][49]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][50]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][51]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][52]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][53]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][54]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][55]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][56]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][57]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][58]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][59]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][60]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][61]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][62]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][63]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][64]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][65]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][66]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][67]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][68]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][69]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][70]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][71]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][72]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][73]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][74]} {design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/valueMem[0][75]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/sort/changeOutputPointer]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/distanceValid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/done]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/rd_en]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/start]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 1 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dist/stop]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 1 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/wr_en]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe22]
set_property port_width 1 [get_debug_ports u_ila_0/probe22]
connect_debug_port u_ila_0/probe22 [get_nets [list design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/dataValid]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe23]
set_property port_width 1 [get_debug_ports u_ila_0/probe23]
connect_debug_port u_ila_0/probe23 [get_nets [list design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/fifo/firstTime]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe24]
set_property port_width 1 [get_debug_ports u_ila_0/probe24]
connect_debug_port u_ila_0/probe24 [get_nets [list design_1_i/KNN_accelerator_0/inst/KNN_accelerator_v1_0_S00_AXI_inst/knnTop/reset]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
