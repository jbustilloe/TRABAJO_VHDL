library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity top is
    Port ( LUZ_R : out std_logic_vector(0 TO 1);--Luces rojas de los semaforos
           LUZ_V : out std_logic_vector(0 TO 1);--luces verdes de los semaforos
           LUZ_A : out std_logic_vector(0 TO 1);--Luces ambar de los semaforos
           SENSOR : in std_logic;--Sensor que detecta el coche que viene
           CLK : in std_logic; --Reloj Basico
           RESET : in std_logic);--Volver al primer estado
end top;

architecture Behavioral of top is

signal CLK2 :std_logic ;

component Reloj is
    port(
        CLK : in std_logic;
        RESET : in std_logic;
        CLK2 : out std_logic
        );
end component;

component SEMAFORO is--Programa que gestiona los estados de los semaforos
    port (
        RESET : in std_logic;
        CLK : in std_logic;
        CLK2 : in std_logic;
        SENSOR : in std_logic;
        LUZ_R : out std_logic_vector(0 TO 1);
        LUZ_V : out std_logic_vector(0 TO 1);
        LUZ_A : out std_logic_vector(0 TO 1)
        );
end component ;

signal synk_out: std_logic;
signal edge: std_logic;

begin
Inst_REL: Reloj PORT MAP
(
    CLK2 => CLK2,
    CLK=>CLK,
    RESET=>RESET
 );
Inst_SEM: SEMAFORO PORT MAP
 (
    CLK2 => CLK2,
    CLK => CLK,
    SENSOR => SENSOR,
    RESET => RESET,
    LUZ_R =>LUZ_R,
    LUZ_A =>LUZ_A,
    LUZ_V =>LUZ_V
);
end Behavioral;

