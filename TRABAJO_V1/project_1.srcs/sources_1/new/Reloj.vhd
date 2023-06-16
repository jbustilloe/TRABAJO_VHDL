----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Reloj is
    Port ( 
        CLK2 : out STD_LOGIC;
        CLK : in std_logic;
        RESET : in std_logic);
end Reloj;
    
architecture Behavioral of Reloj is


Signal Cont1:  integer range 0 to 100000000 := 0;
signal Salida: std_logic;


begin

process(CLK, RESET)
begin
if RESET = '0' then
    Cont1 <= 0;
    Salida<='0';
elsif rising_edge (CLK) then
    if (cont1 = 100000000) then 
            salida<=NOT(salida);
            cont1<=0;
    else
        cont1<=cont1+1;
    end if;
end if;
end process;

CLK2<=salida;
end Behavioral;
