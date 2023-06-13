library ieee;
use ieee.std_logic_1164.all;

entity tb_SEMAFORO2 is
end tb_SEMAFORO2;

architecture tb of tb_SEMAFORO2 is

    component SEMAFORO
        port (RESET  : in std_logic;
              CLK    : in std_logic;
              CLK2   : in std_logic;
              SENSOR : in std_logic;
              LUZ_R  : out std_logic_vector (0 to 1);
              LUZ_V  : out std_logic_vector (0 to 1);
              LUZ_A  : out std_logic_vector (0 to 1));
    end component;

    signal RESET  : std_logic;
    signal CLK    : std_logic;
    signal CLK2   : std_logic;
    signal SENSOR : std_logic;
    signal LUZ_R  : std_logic_vector (0 to 1);
    signal LUZ_V  : std_logic_vector (0 to 1);
    signal LUZ_A  : std_logic_vector (0 to 1);

    constant TbPeriod : time := 1000 ns;
    constant TbPeriod2 : time := 1000000000 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbClock2 : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : SEMAFORO
    port map (RESET  => RESET,
              CLK    => CLK,
              CLK2   => CLK2,
              SENSOR => SENSOR,
              LUZ_R  => LUZ_R,
              LUZ_V  => LUZ_V,
              LUZ_A  => LUZ_A);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';
    TbClock2 <= not TbClock2 after TbPeriod2/2 when TbSimEnded /= '1' else '0';
    -- EDIT: Check that CLK is really your main clock signal
    CLK <= TbClock;
    CLK2 <= TbClock2;
    

    stimuli : process
    begin

        SENSOR <= '0';

        -- Reset generation
        -- EDIT: Check that RESET is really your reset signal
        RESET <= '0';
        wait for 100 ns;
        RESET <= '1';
        wait for 100 ns;

        wait for 5*TbPeriod2;--primer coche que llega y se queda parado 10s hasta que pasa (T=5s)
        SENSOR<='1';
        wait for TbPeriod2*10;
        SENSOR<='0';
        
        
         wait for 5*TbPeriod2;--Segundo coche que llega que pasa de largo porque el semaforo ya esta en verde (t=20s)
        SENSOR<='1';
        wait for TbPeriod2;
        SENSOR<='0';
        
        wait for 15*TbPeriod2;   --Tercer coche que llega, llega cuando el semaforo vuelve a estar en rojo. (t=41s)
        SENSOR<='1';            --tiene que esperar a que pasen los 20s minimos para que se vuelva a poner en verde 
        wait for TbPeriod2*20;  
        SENSOR<='0';
        
        
        wait for 50 * TbPeriod2;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_SEMAFORO of tb_SEMAFORO is
    for tb
    end for;
end cfg_tb_SEMAFORO;
