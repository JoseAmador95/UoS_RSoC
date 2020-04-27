----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.03.2020 00:26:25
-- Design Name: 
-- Module Name: pwm_f - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pwm_f is
    Generic ( sys_clk : INTEGER := 100_000_000;
              resolution : INTEGER := 4);
              
    Port ( clock : in STD_LOGIC;
           frequency : in STD_LOGIC_VECTOR (13 DOWNTO 0);
           duty : in STD_LOGIC_VECTOR (3 DOWNTO 0);
           en : in STD_LOGIC;
           reset : in STD_LOGIC;
           pwm_out : out STD_LOGIC);
end pwm_f;

architecture Behavioral of pwm_f is
    SIGNAL period : STD_LOGIC_VECTOR(13 DOWNTO 0);
BEGIN
    PROCESS (clock, reset)
    BEGIN
        period <= STD_LOGIC_VECTOR'(UNSIGNED(
        IF(reset = '0') THEN
            pwm_out <= '0';
        ELSE
            
    

end Behavioral;
