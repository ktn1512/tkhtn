// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Jan  6 09:55:46 2026
// Host        : DESKTOP-C8BHJOE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ i2c_scan_v2_i2c_scanner_0_0_sim_netlist.v
// Design      : i2c_scan_v2_i2c_scanner_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "i2c_scan_v2_i2c_scanner_0_0,i2c_scanner_v1_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "i2c_scanner_v1_1,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (SDA,
    SCL,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready);
  inout SDA;
  inout SCL;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_CLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [3:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;

  wire \<const0> ;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVCMOS33" *) 
  (* SLEW = "SLOW" *) wire SCL;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* IOSTANDARD = "LVCMOS33" *) 
  (* SLEW = "SLOW" *) wire SDA;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_scanner_v1_1 U0
       (.SCL(SCL),
        .SDA(SDA),
        .S_AXI_ARREADY(s_axi_arready),
        .S_AXI_AWREADY(s_axi_awready),
        .S_AXI_WREADY(s_axi_wready),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[3:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[3:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_scanner_core
   (SR,
    D,
    SDA,
    SCL,
    s_axi_aclk,
    s_axi_awvalid,
    s_axi_wvalid,
    start_req_reg_0,
    start_req_reg_1,
    p_0_in,
    s_axi_aresetn,
    Q,
    \axi_rdata_reg[2] ,
    axi_araddr,
    \shift_reg_reg[7]_0 ,
    s_axi_wdata);
  output [0:0]SR;
  output [1:0]D;
  inout SDA;
  inout SCL;
  input s_axi_aclk;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input start_req_reg_0;
  input start_req_reg_1;
  input [1:0]p_0_in;
  input s_axi_aresetn;
  input [15:0]Q;
  input [1:0]\axi_rdata_reg[2] ;
  input [1:0]axi_araddr;
  input [6:0]\shift_reg_reg[7]_0 ;
  input [0:0]s_axi_wdata;

  wire [1:0]D;
  wire \FSM_onehot_current_state[4]_i_1_n_0 ;
  wire \FSM_onehot_current_state[4]_i_2_n_0 ;
  wire \FSM_onehot_current_state[4]_i_3_n_0 ;
  wire \FSM_onehot_current_state[4]_i_4_n_0 ;
  wire \FSM_onehot_current_state[4]_i_5_n_0 ;
  wire \FSM_onehot_current_state_reg_n_0_[0] ;
  wire \FSM_onehot_current_state_reg_n_0_[2] ;
  wire \FSM_onehot_current_state_reg_n_0_[3] ;
  wire \FSM_onehot_current_state_reg_n_0_[4] ;
  wire IOBUF_SCL_Inst_i_1_n_0;
  wire [15:0]Q;
  wire SCL;
  wire SDA;
  wire [0:0]SR;
  wire T;
  wire ack_latched_i_1_n_0;
  wire ack_latched_i_2_n_0;
  wire ack_latched_reg_n_0;
  wire [1:0]axi_araddr;
  wire [1:0]\axi_rdata_reg[2] ;
  wire [2:0]bit_cnt;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire \bit_cnt[2]_i_2_n_0 ;
  wire \bit_cnt[2]_i_3_n_0 ;
  wire busy;
  wire busy_i_1_n_0;
  wire dev_found;
  wire dev_found_i_1_n_0;
  wire dev_found_i_2_n_0;
  wire i2c_tick;
  wire load;
  wire [1:0]p_0_in;
  wire \phase[0]_i_1_n_0 ;
  wire \phase[0]_i_2_n_0 ;
  wire \phase[0]_i_3_n_0 ;
  wire \phase[1]_i_1_n_0 ;
  wire \phase[1]_i_2_n_0 ;
  wire \phase[2]_i_1_n_0 ;
  wire \phase[2]_i_2_n_0 ;
  wire \phase_reg_n_0_[0] ;
  wire \phase_reg_n_0_[1] ;
  wire \phase_reg_n_0_[2] ;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_awvalid;
  wire [0:0]s_axi_wdata;
  wire s_axi_wvalid;
  wire scl_out_en;
  wire scl_out_en_i_1_n_0;
  wire scl_out_en_i_2_n_0;
  wire scl_out_en_i_3_n_0;
  wire scl_out_en_i_4_n_0;
  wire sda_in_val;
  wire sda_out_en;
  wire sda_out_en0_out;
  wire sda_out_en_i_1_n_0;
  wire sda_out_en_i_2_n_0;
  wire sda_out_en_i_4_n_0;
  wire sda_out_en_i_5_n_0;
  wire sda_out_en_i_6_n_0;
  wire [1:0]sda_sync_reg;
  wire [7:1]shift_reg;
  wire shift_reg0;
  wire [6:0]\shift_reg_reg[7]_0 ;
  wire start_req;
  wire start_req_i_1_n_0;
  wire start_req_i_2_n_0;
  wire start_req_reg_0;
  wire start_req_reg_1;
  wire start_req_reg_n_0;
  wire tick_cnt1_carry__0_i_1_n_0;
  wire tick_cnt1_carry__0_i_2_n_0;
  wire tick_cnt1_carry__0_i_3_n_0;
  wire tick_cnt1_carry__0_i_4_n_0;
  wire tick_cnt1_carry__0_i_5_n_0;
  wire tick_cnt1_carry__0_i_6_n_0;
  wire tick_cnt1_carry__0_i_7_n_0;
  wire tick_cnt1_carry__0_i_8_n_0;
  wire tick_cnt1_carry__0_n_1;
  wire tick_cnt1_carry__0_n_2;
  wire tick_cnt1_carry__0_n_3;
  wire tick_cnt1_carry_i_1_n_0;
  wire tick_cnt1_carry_i_2_n_0;
  wire tick_cnt1_carry_i_3_n_0;
  wire tick_cnt1_carry_i_4_n_0;
  wire tick_cnt1_carry_i_5_n_0;
  wire tick_cnt1_carry_i_6_n_0;
  wire tick_cnt1_carry_i_7_n_0;
  wire tick_cnt1_carry_i_8_n_0;
  wire tick_cnt1_carry_n_0;
  wire tick_cnt1_carry_n_1;
  wire tick_cnt1_carry_n_2;
  wire tick_cnt1_carry_n_3;
  wire \tick_cnt[0]_i_2_n_0 ;
  wire \tick_cnt[0]_i_3_n_0 ;
  wire \tick_cnt[0]_i_4_n_0 ;
  wire \tick_cnt[0]_i_5_n_0 ;
  wire \tick_cnt[0]_i_6_n_0 ;
  wire \tick_cnt[12]_i_2_n_0 ;
  wire \tick_cnt[12]_i_3_n_0 ;
  wire \tick_cnt[12]_i_4_n_0 ;
  wire \tick_cnt[12]_i_5_n_0 ;
  wire \tick_cnt[4]_i_2_n_0 ;
  wire \tick_cnt[4]_i_3_n_0 ;
  wire \tick_cnt[4]_i_4_n_0 ;
  wire \tick_cnt[4]_i_5_n_0 ;
  wire \tick_cnt[8]_i_2_n_0 ;
  wire \tick_cnt[8]_i_3_n_0 ;
  wire \tick_cnt[8]_i_4_n_0 ;
  wire \tick_cnt[8]_i_5_n_0 ;
  wire [15:0]tick_cnt_reg;
  wire \tick_cnt_reg[0]_i_1_n_0 ;
  wire \tick_cnt_reg[0]_i_1_n_1 ;
  wire \tick_cnt_reg[0]_i_1_n_2 ;
  wire \tick_cnt_reg[0]_i_1_n_3 ;
  wire \tick_cnt_reg[0]_i_1_n_4 ;
  wire \tick_cnt_reg[0]_i_1_n_5 ;
  wire \tick_cnt_reg[0]_i_1_n_6 ;
  wire \tick_cnt_reg[0]_i_1_n_7 ;
  wire \tick_cnt_reg[12]_i_1_n_1 ;
  wire \tick_cnt_reg[12]_i_1_n_2 ;
  wire \tick_cnt_reg[12]_i_1_n_3 ;
  wire \tick_cnt_reg[12]_i_1_n_4 ;
  wire \tick_cnt_reg[12]_i_1_n_5 ;
  wire \tick_cnt_reg[12]_i_1_n_6 ;
  wire \tick_cnt_reg[12]_i_1_n_7 ;
  wire \tick_cnt_reg[4]_i_1_n_0 ;
  wire \tick_cnt_reg[4]_i_1_n_1 ;
  wire \tick_cnt_reg[4]_i_1_n_2 ;
  wire \tick_cnt_reg[4]_i_1_n_3 ;
  wire \tick_cnt_reg[4]_i_1_n_4 ;
  wire \tick_cnt_reg[4]_i_1_n_5 ;
  wire \tick_cnt_reg[4]_i_1_n_6 ;
  wire \tick_cnt_reg[4]_i_1_n_7 ;
  wire \tick_cnt_reg[8]_i_1_n_0 ;
  wire \tick_cnt_reg[8]_i_1_n_1 ;
  wire \tick_cnt_reg[8]_i_1_n_2 ;
  wire \tick_cnt_reg[8]_i_1_n_3 ;
  wire \tick_cnt_reg[8]_i_1_n_4 ;
  wire \tick_cnt_reg[8]_i_1_n_5 ;
  wire \tick_cnt_reg[8]_i_1_n_6 ;
  wire \tick_cnt_reg[8]_i_1_n_7 ;
  wire NLW_IOBUF_SCL_Inst_O_UNCONNECTED;
  wire [3:0]NLW_tick_cnt1_carry_O_UNCONNECTED;
  wire [3:0]NLW_tick_cnt1_carry__0_O_UNCONNECTED;
  wire [3:3]\NLW_tick_cnt_reg[12]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hA8A8A8A8A8AAA8A8)) 
    \FSM_onehot_current_state[4]_i_1 
       (.I0(i2c_tick),
        .I1(\FSM_onehot_current_state[4]_i_2_n_0 ),
        .I2(\FSM_onehot_current_state[4]_i_3_n_0 ),
        .I3(\FSM_onehot_current_state[4]_i_4_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I5(\FSM_onehot_current_state[4]_i_5_n_0 ),
        .O(\FSM_onehot_current_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0C200020)) 
    \FSM_onehot_current_state[4]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(\phase_reg_n_0_[1] ),
        .I2(\phase_reg_n_0_[2] ),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(\FSM_onehot_current_state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFA8A8A8)) 
    \FSM_onehot_current_state[4]_i_3 
       (.I0(start_req),
        .I1(\phase_reg_n_0_[2] ),
        .I2(\phase_reg_n_0_[1] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(start_req_reg_n_0),
        .O(\FSM_onehot_current_state[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_current_state[4]_i_4 
       (.I0(bit_cnt[0]),
        .I1(bit_cnt[1]),
        .I2(bit_cnt[2]),
        .O(\FSM_onehot_current_state[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_onehot_current_state[4]_i_5 
       (.I0(\phase_reg_n_0_[1] ),
        .I1(\phase_reg_n_0_[2] ),
        .I2(\phase_reg_n_0_[0] ),
        .O(\FSM_onehot_current_state[4]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "idle:00001,start:00010,shift_data:00100,read_ack:01000,stop:10000," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_current_state_reg_n_0_[4] ),
        .PRE(SR),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "idle:00001,start:00010,shift_data:00100,read_ack:01000,stop:10000," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .CLR(SR),
        .D(\FSM_onehot_current_state_reg_n_0_[0] ),
        .Q(start_req));
  (* FSM_ENCODED_STATES = "idle:00001,start:00010,shift_data:00100,read_ack:01000,stop:10000," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .CLR(SR),
        .D(start_req),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "idle:00001,start:00010,shift_data:00100,read_ack:01000,stop:10000," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .CLR(SR),
        .D(\FSM_onehot_current_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "idle:00001,start:00010,shift_data:00100,read_ack:01000,stop:10000," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .CLR(SR),
        .D(\FSM_onehot_current_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[4] ));
  (* box_type = "PRIMITIVE" *) 
  IOBUF IOBUF_SCL_Inst
       (.I(1'b0),
        .IO(SCL),
        .O(NLW_IOBUF_SCL_Inst_O_UNCONNECTED),
        .T(IOBUF_SCL_Inst_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    IOBUF_SCL_Inst_i_1
       (.I0(scl_out_en),
        .O(IOBUF_SCL_Inst_i_1_n_0));
  (* box_type = "PRIMITIVE" *) 
  IOBUF IOBUF_SDA_Inst
       (.I(1'b0),
        .IO(SDA),
        .O(sda_in_val),
        .T(T));
  LUT1 #(
    .INIT(2'h1)) 
    IOBUF_SDA_Inst_i_1
       (.I0(sda_out_en),
        .O(T));
  LUT6 #(
    .INIT(64'hFFFFDFFF00001000)) 
    ack_latched_i_1
       (.I0(sda_sync_reg[1]),
        .I1(\phase_reg_n_0_[0] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I3(i2c_tick),
        .I4(ack_latched_i_2_n_0),
        .I5(ack_latched_reg_n_0),
        .O(ack_latched_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    ack_latched_i_2
       (.I0(\phase_reg_n_0_[2] ),
        .I1(\phase_reg_n_0_[1] ),
        .O(ack_latched_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    ack_latched_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(ack_latched_i_1_n_0),
        .Q(ack_latched_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s_axi_aresetn),
        .O(SR));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[1]_i_1 
       (.I0(Q[1]),
        .I1(\axi_rdata_reg[2] [0]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(busy),
        .I5(\shift_reg_reg[7]_0 [1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \axi_rdata[2]_i_1 
       (.I0(Q[2]),
        .I1(\axi_rdata_reg[2] [1]),
        .I2(axi_araddr[1]),
        .I3(axi_araddr[0]),
        .I4(dev_found),
        .I5(\shift_reg_reg[7]_0 [2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hCFE0)) 
    \bit_cnt[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(start_req),
        .I2(\bit_cnt[2]_i_2_n_0 ),
        .I3(bit_cnt[0]),
        .O(\bit_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hEAFFAE00)) 
    \bit_cnt[1]_i_1 
       (.I0(start_req),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(bit_cnt[0]),
        .I3(\bit_cnt[2]_i_2_n_0 ),
        .I4(bit_cnt[1]),
        .O(\bit_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEAAFFFFABAA0000)) 
    \bit_cnt[2]_i_1 
       (.I0(start_req),
        .I1(bit_cnt[1]),
        .I2(bit_cnt[0]),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I4(\bit_cnt[2]_i_2_n_0 ),
        .I5(bit_cnt[2]),
        .O(\bit_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF08000008080000)) 
    \bit_cnt[2]_i_2 
       (.I0(\FSM_onehot_current_state[4]_i_4_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_current_state[4]_i_5_n_0 ),
        .I3(\bit_cnt[2]_i_3_n_0 ),
        .I4(i2c_tick),
        .I5(start_req),
        .O(\bit_cnt[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \bit_cnt[2]_i_3 
       (.I0(\phase_reg_n_0_[2] ),
        .I1(\phase_reg_n_0_[1] ),
        .O(\bit_cnt[2]_i_3_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \bit_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .PRE(SR),
        .Q(bit_cnt[0]));
  FDPE #(
    .INIT(1'b1)) 
    \bit_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .PRE(SR),
        .Q(bit_cnt[1]));
  FDPE #(
    .INIT(1'b1)) 
    \bit_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bit_cnt[2]_i_1_n_0 ),
        .PRE(SR),
        .Q(bit_cnt[2]));
  LUT6 #(
    .INIT(64'hAACFFFFFAA000000)) 
    busy_i_1
       (.I0(start_req_reg_n_0),
        .I1(\FSM_onehot_current_state[4]_i_5_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(i2c_tick),
        .I5(busy),
        .O(busy_i_1_n_0));
  FDCE busy_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(busy_i_1_n_0),
        .Q(busy));
  LUT6 #(
    .INIT(64'hA0EFFFFFA0200000)) 
    dev_found_i_1
       (.I0(ack_latched_reg_n_0),
        .I1(\FSM_onehot_current_state[4]_i_5_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I3(dev_found_i_2_n_0),
        .I4(i2c_tick),
        .I5(dev_found),
        .O(dev_found_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    dev_found_i_2
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(start_req_reg_n_0),
        .O(dev_found_i_2_n_0));
  FDCE dev_found_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(dev_found_i_1_n_0),
        .Q(dev_found));
  FDCE #(
    .INIT(1'b0)) 
    i2c_tick_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(load),
        .Q(i2c_tick));
  LUT6 #(
    .INIT(64'hCCCCFFFFCCFE0000)) 
    \phase[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I1(\phase[0]_i_2_n_0 ),
        .I2(\phase[0]_i_3_n_0 ),
        .I3(\phase_reg_n_0_[2] ),
        .I4(\phase[2]_i_2_n_0 ),
        .I5(\phase_reg_n_0_[0] ),
        .O(\phase[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \phase[0]_i_2 
       (.I0(\phase_reg_n_0_[0] ),
        .I1(start_req),
        .I2(\phase_reg_n_0_[1] ),
        .I3(\phase_reg_n_0_[2] ),
        .O(\phase[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \phase[0]_i_3 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\phase[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF22FFFFFF200000)) 
    \phase[1]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I1(\phase_reg_n_0_[2] ),
        .I2(\phase_reg_n_0_[0] ),
        .I3(\phase[1]_i_2_n_0 ),
        .I4(\phase[2]_i_2_n_0 ),
        .I5(\phase_reg_n_0_[1] ),
        .O(\phase[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000F00E0000E00E0)) 
    \phase[1]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(\phase_reg_n_0_[1] ),
        .I3(\phase_reg_n_0_[2] ),
        .I4(\phase_reg_n_0_[0] ),
        .I5(start_req),
        .O(\phase[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00FF8000)) 
    \phase[2]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(\phase_reg_n_0_[0] ),
        .I2(\phase_reg_n_0_[1] ),
        .I3(\phase[2]_i_2_n_0 ),
        .I4(\phase_reg_n_0_[2] ),
        .O(\phase[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA80)) 
    \phase[2]_i_2 
       (.I0(i2c_tick),
        .I1(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_current_state[4]_i_5_n_0 ),
        .I3(\phase[0]_i_3_n_0 ),
        .I4(start_req),
        .I5(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\phase[2]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\phase[0]_i_1_n_0 ),
        .Q(\phase_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\phase[1]_i_1_n_0 ),
        .Q(\phase_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \phase_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\phase[2]_i_1_n_0 ),
        .Q(\phase_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hEEEAFFFFEEEA0000)) 
    scl_out_en_i_1
       (.I0(scl_out_en_i_2_n_0),
        .I1(start_req),
        .I2(\phase_reg_n_0_[2] ),
        .I3(\phase_reg_n_0_[1] ),
        .I4(scl_out_en_i_3_n_0),
        .I5(scl_out_en),
        .O(scl_out_en_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFC00FEFE)) 
    scl_out_en_i_2
       (.I0(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(\phase_reg_n_0_[1] ),
        .I4(\phase_reg_n_0_[0] ),
        .O(scl_out_en_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA0200)) 
    scl_out_en_i_3
       (.I0(i2c_tick),
        .I1(\phase_reg_n_0_[2] ),
        .I2(\phase_reg_n_0_[1] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I5(scl_out_en_i_4_n_0),
        .O(scl_out_en_i_3_n_0));
  LUT6 #(
    .INIT(64'hF0F0FEEEF0F0F0FE)) 
    scl_out_en_i_4
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(start_req),
        .I3(\phase_reg_n_0_[1] ),
        .I4(\phase_reg_n_0_[2] ),
        .I5(\phase_reg_n_0_[0] ),
        .O(scl_out_en_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    scl_out_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(scl_out_en_i_1_n_0),
        .Q(scl_out_en));
  LUT6 #(
    .INIT(64'hEEFEFFFFEEFE0000)) 
    sda_out_en_i_1
       (.I0(sda_out_en_i_2_n_0),
        .I1(start_req),
        .I2(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I3(\phase_reg_n_0_[1] ),
        .I4(sda_out_en0_out),
        .I5(sda_out_en),
        .O(sda_out_en_i_1_n_0));
  LUT4 #(
    .INIT(16'h5030)) 
    sda_out_en_i_2
       (.I0(sda_out_en_i_4_n_0),
        .I1(sda_out_en_i_5_n_0),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(bit_cnt[2]),
        .O(sda_out_en_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA88888A88)) 
    sda_out_en_i_3
       (.I0(i2c_tick),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(\phase_reg_n_0_[0] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I4(\phase_reg_n_0_[2] ),
        .I5(sda_out_en_i_6_n_0),
        .O(sda_out_en0_out));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    sda_out_en_i_4
       (.I0(shift_reg[5]),
        .I1(shift_reg[7]),
        .I2(shift_reg[4]),
        .I3(bit_cnt[0]),
        .I4(bit_cnt[1]),
        .I5(shift_reg[6]),
        .O(sda_out_en_i_4_n_0));
  LUT5 #(
    .INIT(32'hFAC00AC0)) 
    sda_out_en_i_5
       (.I0(shift_reg[2]),
        .I1(shift_reg[1]),
        .I2(bit_cnt[0]),
        .I3(bit_cnt[1]),
        .I4(shift_reg[3]),
        .O(sda_out_en_i_5_n_0));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCFE)) 
    sda_out_en_i_6
       (.I0(start_req),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(\phase_reg_n_0_[2] ),
        .I4(\phase_reg_n_0_[0] ),
        .I5(\phase_reg_n_0_[1] ),
        .O(sda_out_en_i_6_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sda_out_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(sda_out_en_i_1_n_0),
        .Q(sda_out_en));
  FDPE #(
    .INIT(1'b1)) 
    \sda_sync_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sda_in_val),
        .PRE(SR),
        .Q(sda_sync_reg[0]));
  FDPE #(
    .INIT(1'b1)) 
    \sda_sync_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(sda_sync_reg[0]),
        .PRE(SR),
        .Q(sda_sync_reg[1]));
  LUT4 #(
    .INIT(16'h8000)) 
    \shift_reg[7]_i_1 
       (.I0(i2c_tick),
        .I1(s_axi_aresetn),
        .I2(start_req_reg_n_0),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(shift_reg0));
  FDRE \shift_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(shift_reg0),
        .D(\shift_reg_reg[7]_0 [0]),
        .Q(shift_reg[1]),
        .R(1'b0));
  FDRE \shift_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(shift_reg0),
        .D(\shift_reg_reg[7]_0 [1]),
        .Q(shift_reg[2]),
        .R(1'b0));
  FDRE \shift_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(shift_reg0),
        .D(\shift_reg_reg[7]_0 [2]),
        .Q(shift_reg[3]),
        .R(1'b0));
  FDRE \shift_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(shift_reg0),
        .D(\shift_reg_reg[7]_0 [3]),
        .Q(shift_reg[4]),
        .R(1'b0));
  FDRE \shift_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(shift_reg0),
        .D(\shift_reg_reg[7]_0 [4]),
        .Q(shift_reg[5]),
        .R(1'b0));
  FDRE \shift_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(shift_reg0),
        .D(\shift_reg_reg[7]_0 [5]),
        .Q(shift_reg[6]),
        .R(1'b0));
  FDRE \shift_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(shift_reg0),
        .D(\shift_reg_reg[7]_0 [6]),
        .Q(shift_reg[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    start_req_i_1
       (.I0(start_req_i_2_n_0),
        .I1(s_axi_wdata),
        .I2(p_0_in[1]),
        .I3(start_req),
        .I4(start_req_reg_n_0),
        .O(start_req_i_1_n_0));
  LUT5 #(
    .INIT(32'h00008000)) 
    start_req_i_2
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(start_req_reg_0),
        .I3(start_req_reg_1),
        .I4(p_0_in[0]),
        .O(start_req_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    start_req_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(start_req_i_1_n_0),
        .Q(start_req_reg_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 tick_cnt1_carry
       (.CI(1'b0),
        .CO({tick_cnt1_carry_n_0,tick_cnt1_carry_n_1,tick_cnt1_carry_n_2,tick_cnt1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({tick_cnt1_carry_i_1_n_0,tick_cnt1_carry_i_2_n_0,tick_cnt1_carry_i_3_n_0,tick_cnt1_carry_i_4_n_0}),
        .O(NLW_tick_cnt1_carry_O_UNCONNECTED[3:0]),
        .S({tick_cnt1_carry_i_5_n_0,tick_cnt1_carry_i_6_n_0,tick_cnt1_carry_i_7_n_0,tick_cnt1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 tick_cnt1_carry__0
       (.CI(tick_cnt1_carry_n_0),
        .CO({load,tick_cnt1_carry__0_n_1,tick_cnt1_carry__0_n_2,tick_cnt1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({tick_cnt1_carry__0_i_1_n_0,tick_cnt1_carry__0_i_2_n_0,tick_cnt1_carry__0_i_3_n_0,tick_cnt1_carry__0_i_4_n_0}),
        .O(NLW_tick_cnt1_carry__0_O_UNCONNECTED[3:0]),
        .S({tick_cnt1_carry__0_i_5_n_0,tick_cnt1_carry__0_i_6_n_0,tick_cnt1_carry__0_i_7_n_0,tick_cnt1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    tick_cnt1_carry__0_i_1
       (.I0(tick_cnt_reg[14]),
        .I1(Q[14]),
        .I2(Q[15]),
        .I3(tick_cnt_reg[15]),
        .O(tick_cnt1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    tick_cnt1_carry__0_i_2
       (.I0(tick_cnt_reg[12]),
        .I1(Q[12]),
        .I2(Q[13]),
        .I3(tick_cnt_reg[13]),
        .O(tick_cnt1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    tick_cnt1_carry__0_i_3
       (.I0(tick_cnt_reg[10]),
        .I1(Q[10]),
        .I2(Q[11]),
        .I3(tick_cnt_reg[11]),
        .O(tick_cnt1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    tick_cnt1_carry__0_i_4
       (.I0(tick_cnt_reg[8]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(tick_cnt_reg[9]),
        .O(tick_cnt1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick_cnt1_carry__0_i_5
       (.I0(Q[15]),
        .I1(tick_cnt_reg[15]),
        .I2(Q[14]),
        .I3(tick_cnt_reg[14]),
        .O(tick_cnt1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick_cnt1_carry__0_i_6
       (.I0(Q[13]),
        .I1(tick_cnt_reg[13]),
        .I2(Q[12]),
        .I3(tick_cnt_reg[12]),
        .O(tick_cnt1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick_cnt1_carry__0_i_7
       (.I0(Q[11]),
        .I1(tick_cnt_reg[11]),
        .I2(Q[10]),
        .I3(tick_cnt_reg[10]),
        .O(tick_cnt1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick_cnt1_carry__0_i_8
       (.I0(Q[9]),
        .I1(tick_cnt_reg[9]),
        .I2(Q[8]),
        .I3(tick_cnt_reg[8]),
        .O(tick_cnt1_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    tick_cnt1_carry_i_1
       (.I0(tick_cnt_reg[6]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(tick_cnt_reg[7]),
        .O(tick_cnt1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    tick_cnt1_carry_i_2
       (.I0(tick_cnt_reg[4]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(tick_cnt_reg[5]),
        .O(tick_cnt1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    tick_cnt1_carry_i_3
       (.I0(tick_cnt_reg[2]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(tick_cnt_reg[3]),
        .O(tick_cnt1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    tick_cnt1_carry_i_4
       (.I0(tick_cnt_reg[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(tick_cnt_reg[1]),
        .O(tick_cnt1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick_cnt1_carry_i_5
       (.I0(Q[7]),
        .I1(tick_cnt_reg[7]),
        .I2(Q[6]),
        .I3(tick_cnt_reg[6]),
        .O(tick_cnt1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick_cnt1_carry_i_6
       (.I0(Q[5]),
        .I1(tick_cnt_reg[5]),
        .I2(Q[4]),
        .I3(tick_cnt_reg[4]),
        .O(tick_cnt1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick_cnt1_carry_i_7
       (.I0(Q[3]),
        .I1(tick_cnt_reg[3]),
        .I2(Q[2]),
        .I3(tick_cnt_reg[2]),
        .O(tick_cnt1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tick_cnt1_carry_i_8
       (.I0(Q[1]),
        .I1(tick_cnt_reg[1]),
        .I2(Q[0]),
        .I3(tick_cnt_reg[0]),
        .O(tick_cnt1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \tick_cnt[0]_i_2 
       (.I0(tick_cnt_reg[0]),
        .I1(load),
        .O(\tick_cnt[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tick_cnt[0]_i_3 
       (.I0(tick_cnt_reg[3]),
        .I1(load),
        .O(\tick_cnt[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tick_cnt[0]_i_4 
       (.I0(tick_cnt_reg[2]),
        .I1(load),
        .O(\tick_cnt[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tick_cnt[0]_i_5 
       (.I0(tick_cnt_reg[1]),
        .I1(load),
        .O(\tick_cnt[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \tick_cnt[0]_i_6 
       (.I0(tick_cnt_reg[0]),
        .I1(load),
        .O(\tick_cnt[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tick_cnt[12]_i_2 
       (.I0(tick_cnt_reg[15]),
        .I1(load),
        .O(\tick_cnt[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tick_cnt[12]_i_3 
       (.I0(tick_cnt_reg[14]),
        .I1(load),
        .O(\tick_cnt[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tick_cnt[12]_i_4 
       (.I0(tick_cnt_reg[13]),
        .I1(load),
        .O(\tick_cnt[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tick_cnt[12]_i_5 
       (.I0(tick_cnt_reg[12]),
        .I1(load),
        .O(\tick_cnt[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tick_cnt[4]_i_2 
       (.I0(tick_cnt_reg[7]),
        .I1(load),
        .O(\tick_cnt[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tick_cnt[4]_i_3 
       (.I0(tick_cnt_reg[6]),
        .I1(load),
        .O(\tick_cnt[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tick_cnt[4]_i_4 
       (.I0(tick_cnt_reg[5]),
        .I1(load),
        .O(\tick_cnt[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tick_cnt[4]_i_5 
       (.I0(tick_cnt_reg[4]),
        .I1(load),
        .O(\tick_cnt[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tick_cnt[8]_i_2 
       (.I0(tick_cnt_reg[11]),
        .I1(load),
        .O(\tick_cnt[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tick_cnt[8]_i_3 
       (.I0(tick_cnt_reg[10]),
        .I1(load),
        .O(\tick_cnt[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tick_cnt[8]_i_4 
       (.I0(tick_cnt_reg[9]),
        .I1(load),
        .O(\tick_cnt[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \tick_cnt[8]_i_5 
       (.I0(tick_cnt_reg[8]),
        .I1(load),
        .O(\tick_cnt[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\tick_cnt_reg[0]_i_1_n_7 ),
        .Q(tick_cnt_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tick_cnt_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\tick_cnt_reg[0]_i_1_n_0 ,\tick_cnt_reg[0]_i_1_n_1 ,\tick_cnt_reg[0]_i_1_n_2 ,\tick_cnt_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\tick_cnt[0]_i_2_n_0 }),
        .O({\tick_cnt_reg[0]_i_1_n_4 ,\tick_cnt_reg[0]_i_1_n_5 ,\tick_cnt_reg[0]_i_1_n_6 ,\tick_cnt_reg[0]_i_1_n_7 }),
        .S({\tick_cnt[0]_i_3_n_0 ,\tick_cnt[0]_i_4_n_0 ,\tick_cnt[0]_i_5_n_0 ,\tick_cnt[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\tick_cnt_reg[8]_i_1_n_5 ),
        .Q(tick_cnt_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\tick_cnt_reg[8]_i_1_n_4 ),
        .Q(tick_cnt_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\tick_cnt_reg[12]_i_1_n_7 ),
        .Q(tick_cnt_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tick_cnt_reg[12]_i_1 
       (.CI(\tick_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_tick_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\tick_cnt_reg[12]_i_1_n_1 ,\tick_cnt_reg[12]_i_1_n_2 ,\tick_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tick_cnt_reg[12]_i_1_n_4 ,\tick_cnt_reg[12]_i_1_n_5 ,\tick_cnt_reg[12]_i_1_n_6 ,\tick_cnt_reg[12]_i_1_n_7 }),
        .S({\tick_cnt[12]_i_2_n_0 ,\tick_cnt[12]_i_3_n_0 ,\tick_cnt[12]_i_4_n_0 ,\tick_cnt[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\tick_cnt_reg[12]_i_1_n_6 ),
        .Q(tick_cnt_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\tick_cnt_reg[12]_i_1_n_5 ),
        .Q(tick_cnt_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\tick_cnt_reg[12]_i_1_n_4 ),
        .Q(tick_cnt_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\tick_cnt_reg[0]_i_1_n_6 ),
        .Q(tick_cnt_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\tick_cnt_reg[0]_i_1_n_5 ),
        .Q(tick_cnt_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\tick_cnt_reg[0]_i_1_n_4 ),
        .Q(tick_cnt_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\tick_cnt_reg[4]_i_1_n_7 ),
        .Q(tick_cnt_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tick_cnt_reg[4]_i_1 
       (.CI(\tick_cnt_reg[0]_i_1_n_0 ),
        .CO({\tick_cnt_reg[4]_i_1_n_0 ,\tick_cnt_reg[4]_i_1_n_1 ,\tick_cnt_reg[4]_i_1_n_2 ,\tick_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tick_cnt_reg[4]_i_1_n_4 ,\tick_cnt_reg[4]_i_1_n_5 ,\tick_cnt_reg[4]_i_1_n_6 ,\tick_cnt_reg[4]_i_1_n_7 }),
        .S({\tick_cnt[4]_i_2_n_0 ,\tick_cnt[4]_i_3_n_0 ,\tick_cnt[4]_i_4_n_0 ,\tick_cnt[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\tick_cnt_reg[4]_i_1_n_6 ),
        .Q(tick_cnt_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\tick_cnt_reg[4]_i_1_n_5 ),
        .Q(tick_cnt_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\tick_cnt_reg[4]_i_1_n_4 ),
        .Q(tick_cnt_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\tick_cnt_reg[8]_i_1_n_7 ),
        .Q(tick_cnt_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \tick_cnt_reg[8]_i_1 
       (.CI(\tick_cnt_reg[4]_i_1_n_0 ),
        .CO({\tick_cnt_reg[8]_i_1_n_0 ,\tick_cnt_reg[8]_i_1_n_1 ,\tick_cnt_reg[8]_i_1_n_2 ,\tick_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\tick_cnt_reg[8]_i_1_n_4 ,\tick_cnt_reg[8]_i_1_n_5 ,\tick_cnt_reg[8]_i_1_n_6 ,\tick_cnt_reg[8]_i_1_n_7 }),
        .S({\tick_cnt[8]_i_2_n_0 ,\tick_cnt[8]_i_3_n_0 ,\tick_cnt[8]_i_4_n_0 ,\tick_cnt[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \tick_cnt_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .CLR(SR),
        .D(\tick_cnt_reg[8]_i_1_n_6 ),
        .Q(tick_cnt_reg[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_scanner_v1_1
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s_axi_rdata,
    s_axi_rvalid,
    s_axi_bvalid,
    SDA,
    SCL,
    s_axi_aclk,
    s_axi_awaddr,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_wstrb,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s_axi_rdata;
  output s_axi_rvalid;
  output s_axi_bvalid;
  inout SDA;
  inout SCL;
  input s_axi_aclk;
  input [1:0]s_axi_awaddr;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [31:0]s_axi_wdata;
  input [1:0]s_axi_araddr;
  input s_axi_arvalid;
  input [3:0]s_axi_wstrb;
  input s_axi_aresetn;
  input s_axi_bready;
  input s_axi_rready;

  wire SCL;
  wire SDA;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_scanner_v1_1_S_AXI i2c_scanner_v1_1_S_AXI_inst
       (.SCL(SCL),
        .SDA(SDA),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_scanner_v1_1_S_AXI
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s_axi_rdata,
    s_axi_rvalid,
    s_axi_bvalid,
    SDA,
    SCL,
    s_axi_aclk,
    s_axi_awaddr,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_wstrb,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s_axi_rdata;
  output s_axi_rvalid;
  output s_axi_bvalid;
  inout SDA;
  inout SCL;
  input s_axi_aclk;
  input [1:0]s_axi_awaddr;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [31:0]s_axi_wdata;
  input [1:0]s_axi_araddr;
  input s_axi_arvalid;
  input [3:0]s_axi_wstrb;
  input s_axi_aresetn;
  input s_axi_bready;
  input s_axi_rready;

  wire Inst_I2C_Core_n_0;
  wire SCL;
  wire SDA;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [1:0]p_0_in;
  wire [31:0]reg_data_out;
  wire s_axi_aclk;
  wire [1:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [1:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[31]_i_2_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[31]_i_2_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[31]_i_2_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_scanner_core Inst_I2C_Core
       (.D(reg_data_out[2:1]),
        .Q(slv_reg2[15:0]),
        .SCL(SCL),
        .SDA(SDA),
        .SR(Inst_I2C_Core_n_0),
        .axi_araddr(axi_araddr),
        .\axi_rdata_reg[2] (slv_reg3[2:1]),
        .p_0_in(p_0_in),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wdata(s_axi_wdata[0]),
        .s_axi_wvalid(s_axi_wvalid),
        .\shift_reg_reg[7]_0 (slv_reg1[6:0]),
        .start_req_reg_0(S_AXI_WREADY),
        .start_req_reg_1(S_AXI_AWREADY));
  LUT6 #(
    .INIT(64'hFF7FF070F070F070)) 
    aw_en_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_AWREADY),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(Inst_I2C_Core_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s_axi_araddr[0]),
        .I1(s_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(Inst_I2C_Core_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(Inst_I2C_Core_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(Inst_I2C_Core_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s_axi_wvalid),
        .I4(s_axi_awvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s_axi_wvalid),
        .I4(s_axi_awvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(Inst_I2C_Core_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_awready_i_2
       (.I0(S_AXI_AWREADY),
        .I1(aw_en_reg_n_0),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(Inst_I2C_Core_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s_axi_bready),
        .I5(s_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(Inst_I2C_Core_n_0));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg1[0]),
        .I1(slv_reg2[0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[0]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(slv_reg2[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[10]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(slv_reg2[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[11]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(slv_reg2[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[12]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(slv_reg2[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[13]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(slv_reg2[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[14]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(slv_reg2[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[15]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(slv_reg2[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[16]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(slv_reg2[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[17]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(slv_reg2[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[18]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(slv_reg2[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[19]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(slv_reg2[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(slv_reg2[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[21]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(slv_reg2[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(slv_reg2[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[23]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(slv_reg2[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[24]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(slv_reg2[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(slv_reg2[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(slv_reg2[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(slv_reg2[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(slv_reg2[29]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[29]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(slv_reg2[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s_axi_arvalid),
        .I2(s_axi_rvalid),
        .O(slv_reg_rden));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg1[31]),
        .I1(slv_reg2[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[31]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg1[3]),
        .I1(slv_reg2[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[3]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg1[4]),
        .I1(slv_reg2[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[4]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg1[5]),
        .I1(slv_reg2[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[5]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg1[6]),
        .I1(slv_reg2[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[6]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(slv_reg2[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[7]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(slv_reg2[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[8]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(slv_reg2[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s_axi_rdata[0]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s_axi_rdata[10]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s_axi_rdata[11]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s_axi_rdata[12]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s_axi_rdata[13]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s_axi_rdata[14]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s_axi_rdata[15]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s_axi_rdata[16]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s_axi_rdata[17]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s_axi_rdata[18]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s_axi_rdata[19]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s_axi_rdata[1]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s_axi_rdata[20]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s_axi_rdata[21]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s_axi_rdata[22]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s_axi_rdata[23]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s_axi_rdata[24]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s_axi_rdata[25]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s_axi_rdata[26]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s_axi_rdata[27]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s_axi_rdata[28]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s_axi_rdata[29]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s_axi_rdata[2]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s_axi_rdata[30]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s_axi_rdata[31]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s_axi_rdata[3]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s_axi_rdata[4]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s_axi_rdata[5]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s_axi_rdata[6]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s_axi_rdata[7]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s_axi_rdata[8]),
        .R(Inst_I2C_Core_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s_axi_rdata[9]),
        .R(Inst_I2C_Core_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s_axi_rvalid),
        .I3(s_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(Inst_I2C_Core_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_wready_i_1
       (.I0(S_AXI_WREADY),
        .I1(aw_en_reg_n_0),
        .I2(s_axi_wvalid),
        .I3(s_axi_awvalid),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(Inst_I2C_Core_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[15]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s_axi_wstrb[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[23]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s_axi_wstrb[2]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[31]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s_axi_wstrb[3]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg1[31]_i_2 
       (.I0(p_0_in[0]),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s_axi_wvalid),
        .I4(s_axi_awvalid),
        .I5(p_0_in[1]),
        .O(\slv_reg1[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[7]_i_1 
       (.I0(\slv_reg1[31]_i_2_n_0 ),
        .I1(s_axi_wstrb[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(Inst_I2C_Core_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[15]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s_axi_wstrb[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[23]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s_axi_wstrb[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[31]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s_axi_wstrb[3]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \slv_reg2[31]_i_2 
       (.I0(p_0_in[0]),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s_axi_wvalid),
        .I4(s_axi_awvalid),
        .I5(p_0_in[1]),
        .O(\slv_reg2[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[7]_i_1 
       (.I0(\slv_reg2[31]_i_2_n_0 ),
        .I1(s_axi_wstrb[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(Inst_I2C_Core_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg3[15]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(s_axi_wstrb[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg3[23]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(s_axi_wstrb[2]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg3[31]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(s_axi_wstrb[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg3[31]_i_2 
       (.I0(p_0_in[0]),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s_axi_wvalid),
        .I4(s_axi_awvalid),
        .I5(p_0_in[1]),
        .O(\slv_reg3[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg3[7]_i_1 
       (.I0(\slv_reg3[31]_i_2_n_0 ),
        .I1(s_axi_wstrb[0]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(Inst_I2C_Core_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(Inst_I2C_Core_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
