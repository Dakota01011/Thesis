vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/processing_system7_bfm_v2_0_5
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_10
vlib riviera/lib_pkg_v1_0_2
vlib riviera/fifo_generator_v13_1_2
vlib riviera/lib_fifo_v1_0_6
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_datamover_v5_1_12
vlib riviera/axi_sg_v4_1_4
vlib riviera/axi_dma_v7_1_11
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_10
vlib riviera/axi_data_fifo_v2_1_9
vlib riviera/axi_crossbar_v2_1_11
vlib riviera/axi_protocol_converter_v2_1_10

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap processing_system7_bfm_v2_0_5 riviera/processing_system7_bfm_v2_0_5
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_10 riviera/proc_sys_reset_v5_0_10
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap fifo_generator_v13_1_2 riviera/fifo_generator_v13_1_2
vmap lib_fifo_v1_0_6 riviera/lib_fifo_v1_0_6
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_12 riviera/axi_datamover_v5_1_12
vmap axi_sg_v4_1_4 riviera/axi_sg_v4_1_4
vmap axi_dma_v7_1_11 riviera/axi_dma_v7_1_11
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_10 riviera/axi_register_slice_v2_1_10
vmap axi_data_fifo_v2_1_9 riviera/axi_data_fifo_v2_1_9
vmap axi_crossbar_v2_1_11 riviera/axi_crossbar_v2_1_11
vmap axi_protocol_converter_v2_1_10 riviera/axi_protocol_converter_v2_1_10

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"C:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2016.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work processing_system7_bfm_v2_0_5  -v2k5 "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl/processing_system7_bfm_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_10 -93 \
"../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/04b4/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_processing_system7_0_100M_0/sim/design_1_rst_processing_system7_0_100M_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/832a/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_1_2  -v2k5 "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/a807/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_2 -93 \
"../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/a807/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_2  -v2k5 "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/a807/hdl/fifo_generator_v13_1_rfs.v" \

vcom -work lib_fifo_v1_0_6 -93 \
"../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/61a7/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/6039/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_12 -93 \
"../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/1cd0/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_4 -93 \
"../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/57b4/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_11 -93 \
"../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/a41f/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_dma_0_0_1/sim/design_1_axi_dma_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ipshared/c1cd/hdl/kSortingP2.v" \
"../../../bd/design_1/ipshared/c1cd/hdl/kSortingP1.v" \
"../../../bd/design_1/ipshared/c1cd/hdl/distanceCalcAcc.v" \
"../../../bd/design_1/ipshared/c1cd/hdl/fifo.v" \
"../../../bd/design_1/ipshared/c1cd/hdl/knnPipe.v" \
"../../../bd/design_1/ipshared/c1cd/hdl/KNN_accelerator_v3_0_S00_AXI.v" \
"../../../bd/design_1/ipshared/c1cd/hdl/KNN_accelerator_v3_0_S00_AXIS.v" \
"../../../bd/design_1/ipshared/c1cd/hdl/KNN_accelerator_v3_0_M00_AXIS.v" \
"../../../bd/design_1/ipshared/c1cd/hdl/knnTop.v" \
"../../../bd/design_1/ipshared/c1cd/hdl/KNN_accelerator_v3_0.v" \
"../../../bd/design_1/ip/design_1_KNN_accelerator_1_0_1/sim/design_1_KNN_accelerator_1_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_dma_1_0/sim/design_1_axi_dma_1_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7ee0/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_10  -v2k5 "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7efe/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_9  -v2k5 "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/10b8/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_11  -v2k5 "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/d552/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_xbar_0_1/sim/design_1_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_10  -v2k5 "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/4a8b/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/2527/hdl" "+incdir+../../../../knn_system_project_zedboard.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
"../../../bd/design_1/ip/design_1_auto_pc_2/sim/design_1_auto_pc_2.v" \
"../../../bd/design_1/ip/design_1_auto_pc_3/sim/design_1_auto_pc_3.v" \
"../../../bd/design_1/ip/design_1_auto_pc_4/sim/design_1_auto_pc_4.v" \
"../../../bd/design_1/ip/design_1_auto_pc_5/sim/design_1_auto_pc_5.v" \
"../../../bd/design_1/ip/design_1_auto_pc_6/sim/design_1_auto_pc_6.v" \
"../../../bd/design_1/hdl/design_1.v" \

vlog -work xil_defaultlib "glbl.v"

