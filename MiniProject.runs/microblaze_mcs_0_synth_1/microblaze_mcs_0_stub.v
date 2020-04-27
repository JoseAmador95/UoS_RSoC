// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2.1 (win64) Build 2729669 Thu Dec  5 04:49:17 MST 2019
// Date        : Fri Mar 27 01:00:05 2020
// Host        : DELLXPS-JA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/jose_/OneDrive/Ingenieria/Embedded/FPGA/Vivado/MiniProject/MiniProject.runs/microblaze_mcs_0_synth_1/microblaze_mcs_0_stub.v
// Design      : microblaze_mcs_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "bd_fc5c_0,Vivado 2019.2.1" *)
module microblaze_mcs_0(Clk, Reset, FIT1_Interrupt, FIT1_Toggle, 
  INTC_IRQ, UART_rxd, UART_txd, GPIO1_tri_o)
/* synthesis syn_black_box black_box_pad_pin="Clk,Reset,FIT1_Interrupt,FIT1_Toggle,INTC_IRQ,UART_rxd,UART_txd,GPIO1_tri_o[31:0]" */;
  input Clk;
  input Reset;
  output FIT1_Interrupt;
  output FIT1_Toggle;
  output INTC_IRQ;
  input UART_rxd;
  output UART_txd;
  output [31:0]GPIO1_tri_o;
endmodule
