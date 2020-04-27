-- Engineer: Jose Augusto Amador Demeneghi
-- 
-- Create Date: 22.03.2020 20:51:22
-- Project Name: RSOC Mini Project: Music Sintheziser
-- Module Name: top - Behavioral
-- Target Devices: Nexys 4 Dev Board
-- Description: 
-- 
-- 
-- Revision: 1.1 Generator added instead of manual instantiation
-- Revision: 1.0 Fully working prototype
-- Revision: 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity top is
    Port ( sw : in STD_LOGIC_VECTOR (15 downto 0);          -- On-board Switches
           clk : in STD_LOGIC;                              -- On-board Clock
           led : out STD_LOGIC_VECTOR (15 downto 0);        -- On-board LEDs
           JA: out STD_LOGIC;                               -- debug GPIO
           ampSD : out STD_LOGIC;                           -- Amplifier Enable
           ampPWM : out STD_LOGIC;                          -- Amplifier input signal
           RsRx : in STD_LOGIC;                             -- Rx line from on-board UART
           RsTx : out STD_LOGIC;                            -- TX line from on-board UART
           btnCpuReset: STD_LOGIC                           -- Reset button for soft processor
           );
end top;

architecture Behavioral of top is
    -- Design Constants
    CONSTANT N_OCTAVES : INTEGER := 5;
    CONSTANT N_TONES : INTEGER := 12*N_OCTAVES;
    TYPE FREQUENCIES is array (0 to 11) of INTEGER;         -- Array Typedef for 7 element array
    CONSTANT FREQ_TONES : FREQUENCIES :=                    -- Array of frequencies for ...
    (131, 139, 147, 155, 165, 175,                          -- ... the chromatic scale.
     185, 196, 208, 220, 233, 245);
    -- Architecture Signals
    SIGNAL voice_out : STD_LOGIC_VECTOR(0 to (N_TONES-1));  -- Output signal from each voice
    SIGNAL audio_out : STD_LOGIC;                           -- Audio output
    SIGNAL mux_ctrl  : STD_LOGIC_VECTOR(0 to 31);           -- Multiplexer select signal
    SIGNAL GPIO      : STD_LOGIC_VECTOR(31 downto 0);       -- Soft Processor GPO port
    SIGNAL reset     : STD_LOGIC;                           -- Soft processor Reset pin
begin
    reset <= not btnCpuReset;                               -- Soft processor Reset is Active Low
    MB : entity work.microblaze_mcs_0                       -- Soft Processor instantiation
        PORT MAP (      
        Clk => Clk,                                     
        Reset => reset,
        UART_rxd => RsRx,
        UART_txd => RsTx,
        GPIO1_tri_o => mux_ctrl
        );
    
   octaves : for k in 0 to (N_OCTAVES - 1) generate
        voices: for i in 0 to 11 generate                   -- Iteratively instantiation of Voice module
            voice : ENTITY work.voice                       -- Voice instantiation
                        GENERIC MAP(FREQ_TONES(i)*2**k)     -- Selected Voice frequency from array
                        PORT MAP(clock => clk,              -- Input Clock Signal
                        volume => sw(3 downto 0),           -- Volume control array
                        out_main => voice_out(i + 12*k));    -- Voice output signal
        end generate voices;
    end generate octaves;
    
    process(mux_ctrl)
        CONSTANT MUX_INT : INTEGER := to_integer(resize(unsigned(mux_ctrl),32));
    begin
        if (MUX_INT = 0) OR (MUX_INT > N_TONES) then
            audio_out <= '0';
        else
            audio_out <= voice_out(MUX_INT-1);
        end if;
    end process;
   
   ampSD <= sw(15);                                         -- Enable is given by Switch 15
   ampPWM <= audio_out;                                     -- Multiplexer output attached to ...
                                                            -- ... amplifier's 
   led <= mux_ctrl(0 to 15);                                -- LEDs are attached to soft processor's...
                                                            -- ... GPIO for debuging.
   JA <= audio_out;                                         -- Attach output sigan to debug GPIO 
end Behavioral;
