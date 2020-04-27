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

-- IP VLNV: xilinx.com:ip:iomodule:3.1
-- IP Revision: 5

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

LIBRARY iomodule_v3_1_5;
USE iomodule_v3_1_5.iomodule;

ENTITY bd_fc5c_0_iomodule_0_0 IS
  PORT (
    Clk : IN STD_LOGIC;
    Rst : IN STD_LOGIC;
    UART_Rx : IN STD_LOGIC;
    UART_Tx : OUT STD_LOGIC;
    FIT1_Interrupt : OUT STD_LOGIC;
    FIT1_Toggle : OUT STD_LOGIC;
    GPO1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    INTC_IRQ : OUT STD_LOGIC;
    INTC_Processor_Ack : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    INTC_Interrupt_Address : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    INTC_IRQ_OUT : OUT STD_LOGIC;
    LMB_ABus : IN STD_LOGIC_VECTOR(0 TO 31);
    LMB_WriteDBus : IN STD_LOGIC_VECTOR(0 TO 31);
    LMB_AddrStrobe : IN STD_LOGIC;
    LMB_ReadStrobe : IN STD_LOGIC;
    LMB_WriteStrobe : IN STD_LOGIC;
    LMB_BE : IN STD_LOGIC_VECTOR(0 TO 3);
    Sl_DBus : OUT STD_LOGIC_VECTOR(0 TO 31);
    Sl_Ready : OUT STD_LOGIC;
    Sl_Wait : OUT STD_LOGIC;
    Sl_UE : OUT STD_LOGIC;
    Sl_CE : OUT STD_LOGIC
  );
END bd_fc5c_0_iomodule_0_0;

ARCHITECTURE bd_fc5c_0_iomodule_0_0_arch OF bd_fc5c_0_iomodule_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF bd_fc5c_0_iomodule_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT iomodule IS
    GENERIC (
      C_FAMILY : STRING;
      C_FREQ : INTEGER;
      C_INSTANCE : STRING;
      C_USE_CONFIG_RESET : INTEGER;
      C_AVOID_PRIMITIVES : INTEGER;
      C_TMR : INTEGER;
      C_USE_TMR_DISABLE : INTEGER;
      C_HIGHADDR : STD_LOGIC_VECTOR;
      C_BASEADDR : STD_LOGIC_VECTOR;
      C_MASK : STD_LOGIC_VECTOR;
      C_IO_HIGHADDR : STD_LOGIC_VECTOR;
      C_IO_BASEADDR : STD_LOGIC_VECTOR;
      C_IO_MASK : STD_LOGIC_VECTOR;
      C_LMB_AWIDTH : INTEGER;
      C_LMB_DWIDTH : INTEGER;
      C_LMB_PROTOCOL : INTEGER;
      C_USE_IO_BUS : INTEGER;
      C_USE_UART_RX : INTEGER;
      C_USE_UART_TX : INTEGER;
      C_UART_BAUDRATE : INTEGER;
      C_UART_DATA_BITS : INTEGER;
      C_UART_USE_PARITY : INTEGER;
      C_UART_ODD_PARITY : INTEGER;
      C_UART_RX_INTERRUPT : INTEGER;
      C_UART_TX_INTERRUPT : INTEGER;
      C_UART_ERROR_INTERRUPT : INTEGER;
      C_UART_PROG_BAUDRATE : INTEGER;
      C_USE_FIT1 : INTEGER;
      C_FIT1_No_CLOCKS : INTEGER;
      C_FIT1_INTERRUPT : INTEGER;
      C_USE_FIT2 : INTEGER;
      C_FIT2_No_CLOCKS : INTEGER;
      C_FIT2_INTERRUPT : INTEGER;
      C_USE_FIT3 : INTEGER;
      C_FIT3_No_CLOCKS : INTEGER;
      C_FIT3_INTERRUPT : INTEGER;
      C_USE_FIT4 : INTEGER;
      C_FIT4_No_CLOCKS : INTEGER;
      C_FIT4_INTERRUPT : INTEGER;
      C_USE_PIT1 : INTEGER;
      C_PIT1_SIZE : INTEGER;
      C_PIT1_READABLE : INTEGER;
      C_PIT1_PRESCALER : INTEGER;
      C_PIT1_INTERRUPT : INTEGER;
      C_USE_PIT2 : INTEGER;
      C_PIT2_SIZE : INTEGER;
      C_PIT2_READABLE : INTEGER;
      C_PIT2_PRESCALER : INTEGER;
      C_PIT2_INTERRUPT : INTEGER;
      C_USE_PIT3 : INTEGER;
      C_PIT3_SIZE : INTEGER;
      C_PIT3_READABLE : INTEGER;
      C_PIT3_PRESCALER : INTEGER;
      C_PIT3_INTERRUPT : INTEGER;
      C_USE_PIT4 : INTEGER;
      C_PIT4_SIZE : INTEGER;
      C_PIT4_READABLE : INTEGER;
      C_PIT4_PRESCALER : INTEGER;
      C_PIT4_INTERRUPT : INTEGER;
      C_USE_GPO1 : INTEGER;
      C_GPO1_SIZE : INTEGER;
      C_GPO1_INIT : STD_LOGIC_VECTOR(31 DOWNTO 0);
      C_USE_GPO2 : INTEGER;
      C_GPO2_SIZE : INTEGER;
      C_GPO2_INIT : STD_LOGIC_VECTOR(31 DOWNTO 0);
      C_USE_GPO3 : INTEGER;
      C_GPO3_SIZE : INTEGER;
      C_GPO3_INIT : STD_LOGIC_VECTOR(31 DOWNTO 0);
      C_USE_GPO4 : INTEGER;
      C_GPO4_SIZE : INTEGER;
      C_GPO4_INIT : STD_LOGIC_VECTOR(31 DOWNTO 0);
      C_USE_GPI1 : INTEGER;
      C_GPI1_SIZE : INTEGER;
      C_GPI1_INTERRUPT : INTEGER;
      C_USE_GPI2 : INTEGER;
      C_GPI2_SIZE : INTEGER;
      C_GPI2_INTERRUPT : INTEGER;
      C_USE_GPI3 : INTEGER;
      C_GPI3_SIZE : INTEGER;
      C_GPI3_INTERRUPT : INTEGER;
      C_USE_GPI4 : INTEGER;
      C_GPI4_SIZE : INTEGER;
      C_GPI4_INTERRUPT : INTEGER;
      C_INTC_USE_EXT_INTR : INTEGER;
      C_INTC_INTR_SIZE : INTEGER;
      C_INTC_LEVEL_EDGE : STD_LOGIC_VECTOR(15 DOWNTO 0);
      C_INTC_POSITIVE : STD_LOGIC_VECTOR(15 DOWNTO 0);
      C_INTC_HAS_FAST : INTEGER;
      C_INTC_ADDR_WIDTH : INTEGER;
      C_INTC_BASE_VECTORS : STD_LOGIC_VECTOR;
      C_INTC_ASYNC_INTR : STD_LOGIC_VECTOR(15 DOWNTO 0);
      C_INTC_NUM_SYNC_FF : INTEGER
    );
    PORT (
      Clk : IN STD_LOGIC;
      Rst : IN STD_LOGIC;
      Config_Reset : IN STD_LOGIC;
      TMR_Rst : IN STD_LOGIC;
      TMR_Disable : IN STD_LOGIC;
      ToVote : OUT STD_LOGIC_VECTOR(1023 DOWNTO 0);
      FromAVote : IN STD_LOGIC_VECTOR(1023 DOWNTO 0);
      FromBVote : IN STD_LOGIC_VECTOR(1023 DOWNTO 0);
      IO_Addr_Strobe : OUT STD_LOGIC;
      IO_Read_Strobe : OUT STD_LOGIC;
      IO_Write_Strobe : OUT STD_LOGIC;
      IO_Address : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      IO_Byte_Enable : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      IO_Write_Data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      IO_Read_Data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      IO_Ready : IN STD_LOGIC;
      UART_Rx : IN STD_LOGIC;
      UART_Tx : OUT STD_LOGIC;
      UART_Interrupt : OUT STD_LOGIC;
      FIT1_Interrupt : OUT STD_LOGIC;
      FIT1_Toggle : OUT STD_LOGIC;
      FIT2_Interrupt : OUT STD_LOGIC;
      FIT2_Toggle : OUT STD_LOGIC;
      FIT3_Interrupt : OUT STD_LOGIC;
      FIT3_Toggle : OUT STD_LOGIC;
      FIT4_Interrupt : OUT STD_LOGIC;
      FIT4_Toggle : OUT STD_LOGIC;
      PIT1_Enable : IN STD_LOGIC;
      PIT1_Interrupt : OUT STD_LOGIC;
      PIT1_Toggle : OUT STD_LOGIC;
      PIT2_Enable : IN STD_LOGIC;
      PIT2_Interrupt : OUT STD_LOGIC;
      PIT2_Toggle : OUT STD_LOGIC;
      PIT3_Enable : IN STD_LOGIC;
      PIT3_Interrupt : OUT STD_LOGIC;
      PIT3_Toggle : OUT STD_LOGIC;
      PIT4_Enable : IN STD_LOGIC;
      PIT4_Interrupt : OUT STD_LOGIC;
      PIT4_Toggle : OUT STD_LOGIC;
      GPO1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      GPO2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      GPO3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      GPO4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      GPI1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      GPI1_Interrupt : OUT STD_LOGIC;
      GPI2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      GPI2_Interrupt : OUT STD_LOGIC;
      GPI3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      GPI3_Interrupt : OUT STD_LOGIC;
      GPI4 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      GPI4_Interrupt : OUT STD_LOGIC;
      INTC_Interrupt : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      INTC_IRQ : OUT STD_LOGIC;
      INTC_Processor_Ack : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      INTC_Interrupt_Address : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      INTC_IRQ_OUT : OUT STD_LOGIC;
      LMB_ABus : IN STD_LOGIC_VECTOR(0 TO 31);
      LMB_WriteDBus : IN STD_LOGIC_VECTOR(0 TO 31);
      LMB_AddrStrobe : IN STD_LOGIC;
      LMB_ReadStrobe : IN STD_LOGIC;
      LMB_WriteStrobe : IN STD_LOGIC;
      LMB_BE : IN STD_LOGIC_VECTOR(0 TO 3);
      Sl_DBus : OUT STD_LOGIC_VECTOR(0 TO 31);
      Sl_Ready : OUT STD_LOGIC;
      Sl_Wait : OUT STD_LOGIC;
      Sl_UE : OUT STD_LOGIC;
      Sl_CE : OUT STD_LOGIC
    );
  END COMPONENT iomodule;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF Sl_CE: SIGNAL IS "xilinx.com:interface:lmb:1.0 SLMB CE";
  ATTRIBUTE X_INTERFACE_INFO OF Sl_UE: SIGNAL IS "xilinx.com:interface:lmb:1.0 SLMB UE";
  ATTRIBUTE X_INTERFACE_INFO OF Sl_Wait: SIGNAL IS "xilinx.com:interface:lmb:1.0 SLMB WAIT";
  ATTRIBUTE X_INTERFACE_INFO OF Sl_Ready: SIGNAL IS "xilinx.com:interface:lmb:1.0 SLMB READY";
  ATTRIBUTE X_INTERFACE_INFO OF Sl_DBus: SIGNAL IS "xilinx.com:interface:lmb:1.0 SLMB READDBUS";
  ATTRIBUTE X_INTERFACE_INFO OF LMB_BE: SIGNAL IS "xilinx.com:interface:lmb:1.0 SLMB BE";
  ATTRIBUTE X_INTERFACE_INFO OF LMB_WriteStrobe: SIGNAL IS "xilinx.com:interface:lmb:1.0 SLMB WRITESTROBE";
  ATTRIBUTE X_INTERFACE_INFO OF LMB_ReadStrobe: SIGNAL IS "xilinx.com:interface:lmb:1.0 SLMB READSTROBE";
  ATTRIBUTE X_INTERFACE_INFO OF LMB_AddrStrobe: SIGNAL IS "xilinx.com:interface:lmb:1.0 SLMB ADDRSTROBE";
  ATTRIBUTE X_INTERFACE_INFO OF LMB_WriteDBus: SIGNAL IS "xilinx.com:interface:lmb:1.0 SLMB WRITEDBUS";
  ATTRIBUTE X_INTERFACE_PARAMETER OF LMB_ABus: SIGNAL IS "XIL_INTERFACENAME SLMB, ADDR_WIDTH 32, DATA_WIDTH 32, READ_WRITE_MODE READ_WRITE, PROTOCOL STANDARD";
  ATTRIBUTE X_INTERFACE_INFO OF LMB_ABus: SIGNAL IS "xilinx.com:interface:lmb:1.0 SLMB ABUS";
  ATTRIBUTE X_INTERFACE_PARAMETER OF INTC_IRQ_OUT: SIGNAL IS "XIL_INTERFACENAME INTERRUPT.INTC_Irq_Out, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF INTC_IRQ_OUT: SIGNAL IS "xilinx.com:signal:interrupt:1.0 INTERRUPT.INTC_Irq_Out INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF INTC_Interrupt_Address: SIGNAL IS "xilinx.com:interface:mbinterrupt:1.0 INTC_Irq ADDRESS";
  ATTRIBUTE X_INTERFACE_INFO OF INTC_Processor_Ack: SIGNAL IS "xilinx.com:interface:mbinterrupt:1.0 INTC_Irq ACK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF INTC_IRQ: SIGNAL IS "XIL_INTERFACENAME INTC_Irq, SENSITIVITY LEVEL_HIGH, LOW_LATENCY 1";
  ATTRIBUTE X_INTERFACE_INFO OF INTC_IRQ: SIGNAL IS "xilinx.com:interface:mbinterrupt:1.0 INTC_Irq INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF GPO1: SIGNAL IS "XIL_INTERFACENAME GPIO1, C_USE_GPO1 1, C_GPO1_SIZE 32, C_GPO1_INIT 0x00000000, C_USE_GPI1 0, C_GPI1_SIZE 32, C_GPI1_INTERRUPT 0, BOARD.ASSOCIATED_PARAM GPIO1_BOARD_INTERFACE";
  ATTRIBUTE X_INTERFACE_INFO OF GPO1: SIGNAL IS "xilinx.com:interface:gpio:1.0 GPIO1 TRI_O";
  ATTRIBUTE X_INTERFACE_PARAMETER OF FIT1_Interrupt: SIGNAL IS "XIL_INTERFACENAME INTERRUPT.FIT1_Interrupt, SENSITIVITY EDGE_RISING, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF FIT1_Interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 INTERRUPT.FIT1_Interrupt INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF UART_Tx: SIGNAL IS "xilinx.com:interface:uart:1.0 UART TxD";
  ATTRIBUTE X_INTERFACE_PARAMETER OF UART_Rx: SIGNAL IS "XIL_INTERFACENAME UART, BOARD.ASSOCIATED_PARAM UART_BOARD_INTERFACE";
  ATTRIBUTE X_INTERFACE_INFO OF UART_Rx: SIGNAL IS "xilinx.com:interface:uart:1.0 UART RxD";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Rst: SIGNAL IS "XIL_INTERFACENAME RST.Rst, POLARITY ACTIVE_HIGH, TYPE PERIPHERAL, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF Rst: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.Rst RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Clk: SIGNAL IS "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLMB, ASSOCIATED_RESET Rst:TMR_Rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN bd_fc5c_0_Clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF Clk: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
BEGIN
  U0 : iomodule
    GENERIC MAP (
      C_FAMILY => "artix7",
      C_FREQ => 100000000,
      C_INSTANCE => "iomodule",
      C_USE_CONFIG_RESET => 0,
      C_AVOID_PRIMITIVES => 0,
      C_TMR => 0,
      C_USE_TMR_DISABLE => 0,
      C_HIGHADDR => X"000000008000FFFF",
      C_BASEADDR => X"0000000080000000",
      C_MASK => X"00000000C0000000",
      C_IO_HIGHADDR => X"00000000FFFFFFFF",
      C_IO_BASEADDR => X"00000000C0000000",
      C_IO_MASK => X"00000000C0000000",
      C_LMB_AWIDTH => 32,
      C_LMB_DWIDTH => 32,
      C_LMB_PROTOCOL => 0,
      C_USE_IO_BUS => 0,
      C_USE_UART_RX => 1,
      C_USE_UART_TX => 1,
      C_UART_BAUDRATE => 115200,
      C_UART_DATA_BITS => 8,
      C_UART_USE_PARITY => 0,
      C_UART_ODD_PARITY => 0,
      C_UART_RX_INTERRUPT => 0,
      C_UART_TX_INTERRUPT => 0,
      C_UART_ERROR_INTERRUPT => 0,
      C_UART_PROG_BAUDRATE => 0,
      C_USE_FIT1 => 1,
      C_FIT1_No_CLOCKS => 100000,
      C_FIT1_INTERRUPT => 1,
      C_USE_FIT2 => 0,
      C_FIT2_No_CLOCKS => 6216,
      C_FIT2_INTERRUPT => 0,
      C_USE_FIT3 => 0,
      C_FIT3_No_CLOCKS => 6216,
      C_FIT3_INTERRUPT => 0,
      C_USE_FIT4 => 0,
      C_FIT4_No_CLOCKS => 6216,
      C_FIT4_INTERRUPT => 0,
      C_USE_PIT1 => 0,
      C_PIT1_SIZE => 32,
      C_PIT1_READABLE => 1,
      C_PIT1_PRESCALER => 0,
      C_PIT1_INTERRUPT => 0,
      C_USE_PIT2 => 0,
      C_PIT2_SIZE => 32,
      C_PIT2_READABLE => 1,
      C_PIT2_PRESCALER => 0,
      C_PIT2_INTERRUPT => 0,
      C_USE_PIT3 => 0,
      C_PIT3_SIZE => 32,
      C_PIT3_READABLE => 1,
      C_PIT3_PRESCALER => 0,
      C_PIT3_INTERRUPT => 0,
      C_USE_PIT4 => 0,
      C_PIT4_SIZE => 32,
      C_PIT4_READABLE => 1,
      C_PIT4_PRESCALER => 0,
      C_PIT4_INTERRUPT => 0,
      C_USE_GPO1 => 1,
      C_GPO1_SIZE => 32,
      C_GPO1_INIT => X"00000000",
      C_USE_GPO2 => 0,
      C_GPO2_SIZE => 32,
      C_GPO2_INIT => X"00000000",
      C_USE_GPO3 => 0,
      C_GPO3_SIZE => 32,
      C_GPO3_INIT => X"00000000",
      C_USE_GPO4 => 0,
      C_GPO4_SIZE => 32,
      C_GPO4_INIT => X"00000000",
      C_USE_GPI1 => 0,
      C_GPI1_SIZE => 32,
      C_GPI1_INTERRUPT => 0,
      C_USE_GPI2 => 0,
      C_GPI2_SIZE => 32,
      C_GPI2_INTERRUPT => 0,
      C_USE_GPI3 => 0,
      C_GPI3_SIZE => 32,
      C_GPI3_INTERRUPT => 0,
      C_USE_GPI4 => 0,
      C_GPI4_SIZE => 32,
      C_GPI4_INTERRUPT => 0,
      C_INTC_USE_EXT_INTR => 0,
      C_INTC_INTR_SIZE => 1,
      C_INTC_LEVEL_EDGE => X"0000",
      C_INTC_POSITIVE => X"FFFF",
      C_INTC_HAS_FAST => 1,
      C_INTC_ADDR_WIDTH => 15,
      C_INTC_BASE_VECTORS => X"0000000000000000",
      C_INTC_ASYNC_INTR => X"FFFF",
      C_INTC_NUM_SYNC_FF => 2
    )
    PORT MAP (
      Clk => Clk,
      Rst => Rst,
      Config_Reset => '0',
      TMR_Rst => '0',
      TMR_Disable => '0',
      FromAVote => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1024)),
      FromBVote => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1024)),
      IO_Read_Data => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      IO_Ready => '0',
      UART_Rx => UART_Rx,
      UART_Tx => UART_Tx,
      FIT1_Interrupt => FIT1_Interrupt,
      FIT1_Toggle => FIT1_Toggle,
      PIT1_Enable => '0',
      PIT2_Enable => '0',
      PIT3_Enable => '0',
      PIT4_Enable => '0',
      GPO1 => GPO1,
      GPI1 => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      GPI2 => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      GPI3 => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      GPI4 => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 32)),
      INTC_Interrupt => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      INTC_IRQ => INTC_IRQ,
      INTC_Processor_Ack => INTC_Processor_Ack,
      INTC_Interrupt_Address => INTC_Interrupt_Address,
      INTC_IRQ_OUT => INTC_IRQ_OUT,
      LMB_ABus => LMB_ABus,
      LMB_WriteDBus => LMB_WriteDBus,
      LMB_AddrStrobe => LMB_AddrStrobe,
      LMB_ReadStrobe => LMB_ReadStrobe,
      LMB_WriteStrobe => LMB_WriteStrobe,
      LMB_BE => LMB_BE,
      Sl_DBus => Sl_DBus,
      Sl_Ready => Sl_Ready,
      Sl_Wait => Sl_Wait,
      Sl_UE => Sl_UE,
      Sl_CE => Sl_CE
    );
END bd_fc5c_0_iomodule_0_0_arch;
