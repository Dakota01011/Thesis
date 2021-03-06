# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set C_M00_AXI_MM2S_BURST_LEN [ipgui::add_param $IPINST -name "C_M00_AXI_MM2S_BURST_LEN" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths} ${C_M00_AXI_MM2S_BURST_LEN}
  set C_M00_AXI_MM2S_DATA_WIDTH [ipgui::add_param $IPINST -name "C_M00_AXI_MM2S_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of Data Bus} ${C_M00_AXI_MM2S_DATA_WIDTH}
  set C_M01_AXI_MM2S_BURST_LEN [ipgui::add_param $IPINST -name "C_M01_AXI_MM2S_BURST_LEN" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Burst Length. Supports 1, 2, 4, 8, 16, 32, 64, 128, 256 burst lengths} ${C_M01_AXI_MM2S_BURST_LEN}
  set C_M01_AXI_MM2S_DATA_WIDTH [ipgui::add_param $IPINST -name "C_M01_AXI_MM2S_DATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of Data Bus} ${C_M01_AXI_MM2S_DATA_WIDTH}
  set C_M_AXIS_MM2S_TDATA_WIDTH [ipgui::add_param $IPINST -name "C_M_AXIS_MM2S_TDATA_WIDTH" -parent ${Page_0} -widget comboBox]
  set_property tooltip {Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.} ${C_M_AXIS_MM2S_TDATA_WIDTH}


}

proc update_PARAM_VALUE.C_M00_AXI_MM2S_BURST_LEN { PARAM_VALUE.C_M00_AXI_MM2S_BURST_LEN } {
	# Procedure called to update C_M00_AXI_MM2S_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_MM2S_BURST_LEN { PARAM_VALUE.C_M00_AXI_MM2S_BURST_LEN } {
	# Procedure called to validate C_M00_AXI_MM2S_BURST_LEN
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_MM2S_ID_WIDTH { PARAM_VALUE.C_M00_AXI_MM2S_ID_WIDTH } {
	# Procedure called to update C_M00_AXI_MM2S_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_MM2S_ID_WIDTH { PARAM_VALUE.C_M00_AXI_MM2S_ID_WIDTH } {
	# Procedure called to validate C_M00_AXI_MM2S_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_MM2S_ADDR_WIDTH { PARAM_VALUE.C_M00_AXI_MM2S_ADDR_WIDTH } {
	# Procedure called to update C_M00_AXI_MM2S_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_MM2S_ADDR_WIDTH { PARAM_VALUE.C_M00_AXI_MM2S_ADDR_WIDTH } {
	# Procedure called to validate C_M00_AXI_MM2S_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_MM2S_DATA_WIDTH { PARAM_VALUE.C_M00_AXI_MM2S_DATA_WIDTH } {
	# Procedure called to update C_M00_AXI_MM2S_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_MM2S_DATA_WIDTH { PARAM_VALUE.C_M00_AXI_MM2S_DATA_WIDTH } {
	# Procedure called to validate C_M00_AXI_MM2S_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_MM2S_ARUSER_WIDTH { PARAM_VALUE.C_M00_AXI_MM2S_ARUSER_WIDTH } {
	# Procedure called to update C_M00_AXI_MM2S_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_MM2S_ARUSER_WIDTH { PARAM_VALUE.C_M00_AXI_MM2S_ARUSER_WIDTH } {
	# Procedure called to validate C_M00_AXI_MM2S_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M00_AXI_MM2S_RUSER_WIDTH { PARAM_VALUE.C_M00_AXI_MM2S_RUSER_WIDTH } {
	# Procedure called to update C_M00_AXI_MM2S_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M00_AXI_MM2S_RUSER_WIDTH { PARAM_VALUE.C_M00_AXI_MM2S_RUSER_WIDTH } {
	# Procedure called to validate C_M00_AXI_MM2S_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M01_AXI_MM2S_BURST_LEN { PARAM_VALUE.C_M01_AXI_MM2S_BURST_LEN } {
	# Procedure called to update C_M01_AXI_MM2S_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M01_AXI_MM2S_BURST_LEN { PARAM_VALUE.C_M01_AXI_MM2S_BURST_LEN } {
	# Procedure called to validate C_M01_AXI_MM2S_BURST_LEN
	return true
}

proc update_PARAM_VALUE.C_M01_AXI_MM2S_ID_WIDTH { PARAM_VALUE.C_M01_AXI_MM2S_ID_WIDTH } {
	# Procedure called to update C_M01_AXI_MM2S_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M01_AXI_MM2S_ID_WIDTH { PARAM_VALUE.C_M01_AXI_MM2S_ID_WIDTH } {
	# Procedure called to validate C_M01_AXI_MM2S_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M01_AXI_MM2S_ADDR_WIDTH { PARAM_VALUE.C_M01_AXI_MM2S_ADDR_WIDTH } {
	# Procedure called to update C_M01_AXI_MM2S_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M01_AXI_MM2S_ADDR_WIDTH { PARAM_VALUE.C_M01_AXI_MM2S_ADDR_WIDTH } {
	# Procedure called to validate C_M01_AXI_MM2S_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M01_AXI_MM2S_DATA_WIDTH { PARAM_VALUE.C_M01_AXI_MM2S_DATA_WIDTH } {
	# Procedure called to update C_M01_AXI_MM2S_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M01_AXI_MM2S_DATA_WIDTH { PARAM_VALUE.C_M01_AXI_MM2S_DATA_WIDTH } {
	# Procedure called to validate C_M01_AXI_MM2S_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M01_AXI_MM2S_ARUSER_WIDTH { PARAM_VALUE.C_M01_AXI_MM2S_ARUSER_WIDTH } {
	# Procedure called to update C_M01_AXI_MM2S_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M01_AXI_MM2S_ARUSER_WIDTH { PARAM_VALUE.C_M01_AXI_MM2S_ARUSER_WIDTH } {
	# Procedure called to validate C_M01_AXI_MM2S_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M01_AXI_MM2S_RUSER_WIDTH { PARAM_VALUE.C_M01_AXI_MM2S_RUSER_WIDTH } {
	# Procedure called to update C_M01_AXI_MM2S_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M01_AXI_MM2S_RUSER_WIDTH { PARAM_VALUE.C_M01_AXI_MM2S_RUSER_WIDTH } {
	# Procedure called to validate C_M01_AXI_MM2S_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_M_AXIS_MM2S_TDATA_WIDTH { PARAM_VALUE.C_M_AXIS_MM2S_TDATA_WIDTH } {
	# Procedure called to update C_M_AXIS_MM2S_TDATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_M_AXIS_MM2S_TDATA_WIDTH { PARAM_VALUE.C_M_AXIS_MM2S_TDATA_WIDTH } {
	# Procedure called to validate C_M_AXIS_MM2S_TDATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH { PARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_LITE_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH { PARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_LITE_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH } {
	# Procedure called to update C_S_AXI_LITE_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_LITE_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_LITE_BASEADDR { PARAM_VALUE.C_S_AXI_LITE_BASEADDR } {
	# Procedure called to update C_S_AXI_LITE_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_LITE_BASEADDR { PARAM_VALUE.C_S_AXI_LITE_BASEADDR } {
	# Procedure called to validate C_S_AXI_LITE_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S_AXI_LITE_HIGHADDR { PARAM_VALUE.C_S_AXI_LITE_HIGHADDR } {
	# Procedure called to update C_S_AXI_LITE_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_LITE_HIGHADDR { PARAM_VALUE.C_S_AXI_LITE_HIGHADDR } {
	# Procedure called to validate C_S_AXI_LITE_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.C_M00_AXI_MM2S_BURST_LEN { MODELPARAM_VALUE.C_M00_AXI_MM2S_BURST_LEN PARAM_VALUE.C_M00_AXI_MM2S_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_MM2S_BURST_LEN}] ${MODELPARAM_VALUE.C_M00_AXI_MM2S_BURST_LEN}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_MM2S_ID_WIDTH { MODELPARAM_VALUE.C_M00_AXI_MM2S_ID_WIDTH PARAM_VALUE.C_M00_AXI_MM2S_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_MM2S_ID_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_MM2S_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_MM2S_ADDR_WIDTH { MODELPARAM_VALUE.C_M00_AXI_MM2S_ADDR_WIDTH PARAM_VALUE.C_M00_AXI_MM2S_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_MM2S_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_MM2S_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_MM2S_DATA_WIDTH { MODELPARAM_VALUE.C_M00_AXI_MM2S_DATA_WIDTH PARAM_VALUE.C_M00_AXI_MM2S_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_MM2S_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_MM2S_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_MM2S_ARUSER_WIDTH { MODELPARAM_VALUE.C_M00_AXI_MM2S_ARUSER_WIDTH PARAM_VALUE.C_M00_AXI_MM2S_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_MM2S_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_MM2S_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M00_AXI_MM2S_RUSER_WIDTH { MODELPARAM_VALUE.C_M00_AXI_MM2S_RUSER_WIDTH PARAM_VALUE.C_M00_AXI_MM2S_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M00_AXI_MM2S_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M00_AXI_MM2S_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M01_AXI_MM2S_BURST_LEN { MODELPARAM_VALUE.C_M01_AXI_MM2S_BURST_LEN PARAM_VALUE.C_M01_AXI_MM2S_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M01_AXI_MM2S_BURST_LEN}] ${MODELPARAM_VALUE.C_M01_AXI_MM2S_BURST_LEN}
}

proc update_MODELPARAM_VALUE.C_M01_AXI_MM2S_ID_WIDTH { MODELPARAM_VALUE.C_M01_AXI_MM2S_ID_WIDTH PARAM_VALUE.C_M01_AXI_MM2S_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M01_AXI_MM2S_ID_WIDTH}] ${MODELPARAM_VALUE.C_M01_AXI_MM2S_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M01_AXI_MM2S_ADDR_WIDTH { MODELPARAM_VALUE.C_M01_AXI_MM2S_ADDR_WIDTH PARAM_VALUE.C_M01_AXI_MM2S_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M01_AXI_MM2S_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_M01_AXI_MM2S_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M01_AXI_MM2S_DATA_WIDTH { MODELPARAM_VALUE.C_M01_AXI_MM2S_DATA_WIDTH PARAM_VALUE.C_M01_AXI_MM2S_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M01_AXI_MM2S_DATA_WIDTH}] ${MODELPARAM_VALUE.C_M01_AXI_MM2S_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M01_AXI_MM2S_ARUSER_WIDTH { MODELPARAM_VALUE.C_M01_AXI_MM2S_ARUSER_WIDTH PARAM_VALUE.C_M01_AXI_MM2S_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M01_AXI_MM2S_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_M01_AXI_MM2S_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M01_AXI_MM2S_RUSER_WIDTH { MODELPARAM_VALUE.C_M01_AXI_MM2S_RUSER_WIDTH PARAM_VALUE.C_M01_AXI_MM2S_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M01_AXI_MM2S_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_M01_AXI_MM2S_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_M_AXIS_MM2S_TDATA_WIDTH { MODELPARAM_VALUE.C_M_AXIS_MM2S_TDATA_WIDTH PARAM_VALUE.C_M_AXIS_MM2S_TDATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_M_AXIS_MM2S_TDATA_WIDTH}] ${MODELPARAM_VALUE.C_M_AXIS_MM2S_TDATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH PARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_LITE_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH PARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_LITE_ADDR_WIDTH}
}

