vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/axi_vip_v1_1_8

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap axi_vip_v1_1_8 modelsim_lib/msim/axi_vip_v1_1_8

vlog -work xilinx_vip  -incr -sv -L axi_vip_v1_1_8 -L xilinx_vip "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"E:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0  -incr "+incdir+../../../../i2c_scanner_v2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../i2c_scanner_v2.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -sv -L axi_vip_v1_1_8 -L xilinx_vip "+incdir+../../../../i2c_scanner_v2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_vip_0_0/sim/design_1_axi_vip_0_0_pkg.sv" \

vlog -work axi_vip_v1_1_8  -incr -sv -L axi_vip_v1_1_8 -L xilinx_vip "+incdir+../../../../i2c_scanner_v2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../i2c_scanner_v2.gen/sources_1/bd/design_1/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -sv -L axi_vip_v1_1_8 -L xilinx_vip "+incdir+../../../../i2c_scanner_v2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_vip_0_0/sim/design_1_axi_vip_0_0.sv" \

vcom -work xil_defaultlib  -93 \
"../../../bd/design_1/ipshared/0603/hdl/i2c_scanner.vhd" \
"../../../bd/design_1/ipshared/0603/hdl/i2c_scanner_v1_1_S_AXI.vhd" \
"../../../bd/design_1/ipshared/0603/hdl/i2c_scanner_v1_1.vhd" \
"../../../bd/design_1/ip/design_1_i2c_scanner_0_0/sim/design_1_i2c_scanner_0_0.vhd" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../i2c_scanner_v2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+E:/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

