//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Wed Jan 14 11:09:55 2026
//Host        : DESKTOP-C8BHJOE running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (SCL_0,
    SDA_0,
    aclk_0,
    aresetn_0);
  inout SCL_0;
  inout SDA_0;
  input aclk_0;
  input aresetn_0;

  wire SCL_0;
  wire SDA_0;
  wire aclk_0;
  wire aresetn_0;

  design_1 design_1_i
       (.SCL_0(SCL_0),
        .SDA_0(SDA_0),
        .aclk_0(aclk_0),
        .aresetn_0(aresetn_0));
endmodule
