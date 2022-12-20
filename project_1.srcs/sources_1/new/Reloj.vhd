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

entity Reloj is
    Port ( 
        CLK2 : out STD_LOGIC;
        CLK : in std_logic;
        RESET : in std_logic);
end Reloj;

architecture Behavioral of Reloj is

 signal C :std_logic := '0';
 constant Period2 : time := 1000000000 ns;
 
begin
process (C)
begin
        C <= not C after Period2/2 ;
        CLK2<=C;
end process;


end Behavioral;
