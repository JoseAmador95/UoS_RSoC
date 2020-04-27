-- (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:microblaze_mcs:3.0
-- IP Revision: 12

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY microblaze_mcs_0 IS
  PORT (
    Clk : IN STD_LOGIC;
    Reset : IN STD_LOGIC;
    FIT1_Interrupt : OUT STD_LOGIC;
    FIT1_Toggle : OUT STD_LOGIC;
    INTC_IRQ : OUT STD_LOGIC;
    UART_rxd : IN STD_LOGIC;
    UART_txd : OUT STD_LOGIC;
    GPIO1_tri_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END microblaze_mcs_0;

ARCHITECTURE microblaze_mcs_0_arch OF microblaze_mcs_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF microblaze_mcs_0_arch: ARCHITECTURE IS "yes";
  COMPONENT bd_fc5c_0 IS
    PORT (
      Clk : IN STD_LOGIC;
      Reset : IN STD_LOGIC;
      FIT1_Interrupt : OUT STD_LOGIC;
      FIT1_Toggle : OUT STD_LOGIC;
      INTC_IRQ : OUT STD_LOGIC;
      UART_rxd : IN STD_LOGIC;
      UART_txd : OUT STD_LOGIC;
      GPIO1_tri_o : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT bd_fc5c_0;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF GPIO1_tri_o: SIGNAL IS "XIL_INTERFACENAME GPIO1, C_USE_GPO1 1, C_GPO1_SIZE 32, C_GPO1_INIT 0x00000000, C_USE_GPI1 0, C_GPI1_SIZE 32, C_GPI1_INTERRUPT 0, BOARD.ASSOCIATED_PARAM GPIO1_BOARD_INTERFACE";
  ATTRIBUTE X_INTERFACE_INFO OF GPIO1_tri_o: SIGNAL IS "xilinx.com:interface:gpio:1.0 GPIO1 TRI_O";
  ATTRIBUTE X_INTERFACE_INFO OF UART_txd: SIGNAL IS "xilinx.com:interface:uart:1.0 UART TxD";
  ATTRIBUTE X_INTERFACE_PARAMETER OF UART_rxd: SIGNAL IS "XIL_INTERFACENAME UART, BOARD.ASSOCIATED_PARAM UART_BOARD_INTERFACE";
  ATTRIBUTE X_INTERFACE_INFO OF UART_rxd: SIGNAL IS "xilinx.com:interface:uart:1.0 UART RxD";
  ATTRIBUTE X_INTERFACE_PARAMETER OF INTC_IRQ: SIGNAL IS "XIL_INTERFACENAME INTR.INTC_IRQ, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF INTC_IRQ: SIGNAL IS "xilinx.com:signal:interrupt:1.0 INTR.INTC_IRQ INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF FIT1_Interrupt: SIGNAL IS "XIL_INTERFACENAME INTR.FIT1_Interrupt, SENSITIVITY EDGE_RISING, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF FIT1_Interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 INTR.FIT1_Interrupt INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Reset: SIGNAL IS "XIL_INTERFACENAME RST.Reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0, BOARD.ASSOCIATED_PARAM RESET_BOARD_INTERFACE";
  ATTRIBUTE X_INTERFACE_INFO OF Reset: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.Reset RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Clk: SIGNAL IS "XIL_INTERFACENAME CLK.Clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN bd_fc5c_0_Clk, INSERT_VIP 0, ASSOCIATED_ASYNC_RESET Reset, BOARD.ASSOCIATED_PARAM CLK_BOARD_INTERFACE";
  ATTRIBUTE X_INTERFACE_INFO OF Clk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.Clk CLK";
BEGIN
  U0 : bd_fc5c_0
    PORT MAP (
      Clk => Clk,
      Reset => Reset,
      FIT1_Interrupt => FIT1_Interrupt,
      FIT1_Toggle => FIT1_Toggle,
      INTC_IRQ => INTC_IRQ,
      UART_rxd => UART_rxd,
      UART_txd => UART_txd,
      GPIO1_tri_o => GPIO1_tri_o
    );
END microblaze_mcs_0_arch;
