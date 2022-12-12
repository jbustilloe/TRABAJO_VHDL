


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity top is
    Port ( LUZ_R : out std_logic_vector(0 TO 1);
           LUZ_V : out std_logic_vector(0 TO 1);
           LUZ_A : out std_logic_vector(0 TO 1);
           SENSOR : in STD_LOGIC;
           CLK : in std_logic; 
           RESET : in std_logic);
end top;

architecture Behavioral of top is

component SYNCHRNZR
    port(
        CLK : in std_logic;
        A_in : in std_logic;
        s_out : out std_logic
        );
 end component;
 
 component EDGEDTCTR is
    port (
        CLK : in std_logic;
        S_IN : in std_logic;
        EDGE : out std_logic
 );
end component;

component SEMAFORO is
    port (
        RESET : in std_logic;
        CLK : in std_logic;
        SENSOR : in std_logic;
        LUZ_R : out std_logic_vector(0 TO 1);
        LUZ_V : out std_logic_vector(0 TO 1);
        LUZ_A : out std_logic_vector(0 TO 1)
        );
end component ;

signal synk_out: std_logic;
signal edge: std_logic;

begin

Inst_syncro: SYNCHRNZR PORT MAP
 (
    CLK => CLK,
    A_in => SENSOR,
    s_out => synk_out
);
Inst_contr: EDGEDTCTR PORT MAP
 (
    CLK => CLK,
    S_in => synk_out,
    EDGE => edge
);
Inst_P3: SEMAFORO PORT MAP
 (
    CLK => CLK,
    SENSOR => EDGE,
    RESET => RESET,
    LUZ_R =>LUZ_R,
    LUZ_A =>LUZ_A,
    LUZ_V =>LUZ_V,
);

end Behavioral;
