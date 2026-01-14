//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Sat Jan 10 05:47:10 2026
//Host        : DESKTOP-C8BHJOE running 64-bit major release  (build 9200)
//Command     : generate_target i2c_scan_v2_wrapper.bd
//Design      : i2c_scan_v2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module i2c_scan_v2_wrapper
   (SCL_0,
    SDA_0,
    reset,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  inout SCL_0;
  inout SDA_0;
  input reset;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire SCL_0;
  wire SDA_0;
  wire reset;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  i2c_scan_v2 i2c_scan_v2_i
       (.SCL_0(SCL_0),
        .SDA_0(SDA_0),
        .reset(reset),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
endmodule
