


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity top is
    Port ( LUZ_R : out std_logic_vector(0 TO 1);--Luces rojas de los semaforos
           LUZ_V : out std_logic_vector(0 TO 1);--luces verdes de los semaforos
           LUZ_A : out std_logic_vector(0 TO 1);--Luces ambar de los semaforos
           SENSOR : in STD_LOGIC;--Sensor que detecta el coche que viene
           CLK : in std_logic; --Reloj Basico
           RESET : in std_logic);--Volver al primer estado
--           CLK2 : in std_logic);--reloj para contar los segundos (1Hz)
end top;

architecture Behavioral of top is

signal CLK2 :std_logic :='0';
 constant Period2 : time := 1000000000 ns;

--component SYNCHRNZR--sincroniza el reloj con la señal de entrada
--    port(
--        CLK : in std_logic;
--        A_in : in std_logic;
--        s_out : out std_logic
--        );
-- end component;
 
-- component EDGEDTCTR is--Evita multiples subidas al activarse el sensor
--    port (
--        CLK : in std_logic;
--        S_IN : in std_logic;
--        EDGE : out std_logic
-- );
--end component;

component SEMAFORO is--Programa que gestiona los estados de los semaforos
    port (
        RESET : in std_logic;
        CLK : in std_logic;
--        CLK2 : in std_logic;
        SENSOR : in std_logic;
        LUZ_R : out std_logic_vector(0 TO 1);
        LUZ_V : out std_logic_vector(0 TO 1);
        LUZ_A : out std_logic_vector(0 TO 1)
        );
end component ;

signal synk_out: std_logic;
signal edge: std_logic;

begin

CLK2 <= not CLK2 after Period2/2 ;

--Inst_syncro: SYNCHRNZR PORT MAP
-- (
--    CLK => CLK,
--    A_in => SENSOR,
--    s_out => synk_out
--);
--Inst_contr: EDGEDTCTR PORT MAP
-- (
--    CLK => CLK,
--    S_in => synk_out,
--    EDGE => edge
--);
Inst_P3: SEMAFORO PORT MAP
 (
--    CLK2 => CLK2,
    CLK => CLK,
    SENSOR => SENSOR,
    RESET => RESET,
    LUZ_R =>LUZ_R,
    LUZ_A =>LUZ_A,
    LUZ_V =>LUZ_V
);

end Behavioral;
