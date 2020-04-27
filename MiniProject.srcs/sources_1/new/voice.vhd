----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.03.2020 23:04:20
-- Design Name: 
-- Module Name: voice - Behavioral
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

entity voice is
    Generic (pwm_freq : integer);
    Port ( clock : in STD_LOGIC;
           volume : in STD_LOGIC_VECTOR(3 downto 0);
           out_int : out STD_LOGIC;
           out_main : out STD_LOGIC);
end voice;

architecture Behavioral of voice is
     SIGNAL x : STD_LOGIC;
begin
    PWM1 : entity work.pwm 
            GENERIC MAP(100_000_000, 
                     pwm_freq, 4, 1) 
            PORT MAP(clk => clock,
                   reset_n => '1',
                   ena => '1',
                   duty => "1000",
                   pwm_out(0) => x);

    PWM2 : entity work.pwm 
            GENERIC MAP(100_000_000, 
                  pwm_freq*10, 4, 1) 
            PORT MAP(clk => clock,
                   reset_n => x,
                   ena => '1',
                   duty => volume,
                   pwm_out(0) => out_main);
    out_int <= x;
end Behavioral;
