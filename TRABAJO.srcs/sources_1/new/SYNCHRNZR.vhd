library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SYNCHRNZR is
     port (
        CLK : in std_logic;
        A_in : in std_logic;
        s_out : out std_logic
        );
end SYNCHRNZR;
architecture BEHAVIORAL of SYNCHRNZR is
 signal sreg : std_logic_vector(1 downto 0);
begin
 process (CLK)
 begin
 if rising_edge(CLK) then
 s_out <= sreg(1);
 sreg <= sreg(0) & A_in;
 end if;
 end process;
end BEHAVIORAL;