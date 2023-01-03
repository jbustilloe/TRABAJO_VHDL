----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.12.2022 18:53:47
-- Design Name: 
-- Module Name: tb_SEMAFORO - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

entity tb_SEMAFORO is
end tb_SEMAFORO;

architecture tb of tb_SEMAFORO is

    component TOP
        port (RESET  : in std_logic;
              CLK    : in std_logic;
              CLK2_a : in std_logic;
              SENSOR : in std_logic;
              LUZ_R  : out std_logic_vector (0 to 1);
              LUZ_V  : out std_logic_vector (0 to 1);
              LUZ_A  : out std_logic_vector (0 to 1));
    end component;

    signal RESET  : std_logic;
    signal CLK    : std_logic;
    signal CLK2_a : std_logic;
    signal SENSOR : std_logic;
    signal LUZ_R  : std_logic_vector (0 to 1);
    signal LUZ_V  : std_logic_vector (0 to 1);
    signal LUZ_A  : std_logic_vector (0 to 1);

    constant TbPeriod : time := 1000 ns;
    constant TbPeriod2 : time := 1000000000 ns;
    signal TbClock : std_logic := '0';
    signal TbClock2 : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : TOP
    port map (RESET  => RESET,
              CLK    => CLK,
              CLK2_a => CLK2_a,
              SENSOR => SENSOR,
              LUZ_R  => LUZ_R,
              LUZ_V  => LUZ_V,
              LUZ_A  => LUZ_A);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';
    CLK <= TbClock;
    TbClock2 <= not TbClock2 after TbPeriod2/2 when TbSimEnded /= '1' else '0';
    CLK2_a <= TbClock;
    

    stimuli : process
    begin

        SENSOR <= '0';
        -- Reset generation
        -- EDIT: Check that RESET is really your reset signal
        RESET <= '0';
        wait for 100 ns;
        RESET <= '1';
        wait for 100 ns;

        wait for 5*TbPeriod2;
        SENSOR<='1';
        wait for TbPeriod2*10;
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