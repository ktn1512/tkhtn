set_property SRC_FILE_INFO {cfile:e:/vivado_prj/i2c_scanner_v2/i2c_scanner_v2.gen/sources_1/bd/i2c_scan_v2/ip/i2c_scan_v2_clk_wiz_1_0/i2c_scan_v2_clk_wiz_1_0.xdc rfile:../../../i2c_scanner_v2.gen/sources_1/bd/i2c_scan_v2/ip/i2c_scan_v2_clk_wiz_1_0/i2c_scan_v2_clk_wiz_1_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
