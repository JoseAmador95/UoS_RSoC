library ieee;
use ieee.std_logic_1164.all;

entity tb_pwm is
end tb_pwm;

architecture tb of tb_pwm is

    component pwm
    	GENERIC(
      		  sys_clk         : INTEGER := 100_000_000; 
      		  pwm_freq        : INTEGER := 1_000;       
      		  bits_resolution : INTEGER := 4;          
      		  phases          : INTEGER := 1);         
        port (clk       : in std_logic;
              reset_n   : in std_logic;
              ena       : in std_logic;
              duty      : in std_logic_vector (bits_resolution-1 downto 0);
              pwm_out   : out std_logic_vector (phases-1 downto 0);
              pwm_n_out : out std_logic_vector (phases-1 downto 0));
    end component;

    signal clk       : std_logic;
    signal reset_n   : std_logic;
    signal ena       : std_logic;
    signal duty      : std_logic_vector (4-1 downto 0);
    signal pwm_out   : std_logic_vector (1-1 downto 0);
    signal pwm_n_out : std_logic_vector (1-1 downto 0);

    constant TbPeriod : time := 10 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : pwm
    generic MAP(100_000_000, 
                100_000_00, 4, 1)
    port map (clk       => clk,
              reset_n   => reset_n,
              ena       => ena,
              duty      => duty,
              pwm_out   => pwm_out,
              pwm_n_out => pwm_n_out);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    clk <= TbClock;

    stimuli : process
    begin

        duty <= "1000";
        ena <= '1';
        reset_n <='1';
        
        wait for 400ns;
        duty <= "1110";
        
        wait for 200ns;
        ena <= '0';
        duty<= "0100";
        
        wait for 200ns;
        ena <= '1';
        
        wait for 400ns;
        reset_n <='0';
  

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;
