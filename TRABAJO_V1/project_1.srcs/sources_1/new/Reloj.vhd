----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Reloj is
    Port ( 
        CLK2 : out STD_LOGIC;
        CLK : in std_logic;
        RESET : in std_logic;
        k : out natural);
end Reloj;
    
architecture Behavioral of Reloj is


Signal Cont1:  integer range 0 to 500000 := 0;
Signal Cont2:  integer range 0 to 50000 := 0;
signal Salida: std_logic;
signal segundo: natural;

begin

process(CLK, RESET)
begin
if RESET = '0' then
    Cont1 <= 0;
    Cont2 <= 0;
    Salida<='0';
    segundo<=0;
elsif rising_edge (CLK) then
    if (cont1 = 450000) then 
        if (cont2 = 50000)then
            salida<=NOT(salida);
            cont2<=0;
            cont1<=0;
            if salida='1' then 
            segundo<=segundo+1;
            end if;
        else
            cont2<=cont2+1;
        end if;
    else
        cont1<=cont1+1;
    end if;
end if;
end process;

CLK2<=salida;
k <= segundo;
end Behavioral;
