----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.11.2022 15:34:08
-- Design Name: 
-- Module Name: Practica_3 - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SEMAFORO is
    port (
        RESET : in std_logic;
        CLK : in std_logic;
        CLK2 : in std_logic;
        SENSOR : in std_logic;
        LUZ_R : out std_logic_vector(0 TO 1);
        LUZ_V : out std_logic_vector(0 TO 1);
        LUZ_A : out std_logic_vector(0 TO 1)
        );
end SEMAFORO ;
architecture behavioral of SEMAFORO  is
    type STATES is (S0, S1, S2, S3, S4, S5);
    signal current_state: STATES := S0;
    signal next_state: STATES;
--    constant k: time := 1000 ms;
    signal k: POSITIVE;
begin
state_register: process (RESET, CLK)
begin
 if rising_edge(CLK ) then
    current_state<=next_state;
    if RESET = '0' then
        current_state <= S0;
    end if;
 end if;
 if rising_edge(CLK2) then
    k<=k+1;
 end if;
    
end process;
nextstate_decod: process (SENSOR, current_state)
 begin
    next_state <= current_state;
 case current_state is
    when S0 =>
        if SENSOR = '1' then
            k<=0;
            next_state <= S1;
        end if;
    when S1 =>    
        if k=3 then  
            next_state <= S2;
        end if;
    when S2 => 
         if k=6 then    
            next_state <= S3;
         end if;
    when S3 =>
         if k=26 then  
            next_state <= S4;
         end if;
    when S4 =>
         if k=29 then  
            next_state <= S5;
         end if;
    when S5 =>
         if k=32 then  
            next_state <= S0;
         end if;
    when others =>
        next_state <= S0;
 end case;
 end process;
 output_decod: process (current_state)
 begin
 case current_state is
     when S0 =>
       LUZ_R(1)<= '1';
        LUZ_R(0)<= '0';
        LUZ_A(1)<= '0';
        LUZ_A(0)<= '0';
        LUZ_V(1)<= '0';
        LUZ_V(0)<= '1';
     when S1 =>
        LUZ_R(1)<= '1';
        LUZ_R(0)<= '0';
        LUZ_A(1)<= '0';
        LUZ_A(0)<= '1';
        LUZ_V(1)<= '0';
        LUZ_V(0)<= '0';
    when S2 =>
        LUZ_R(1)<= '1';
        LUZ_R(0)<= '1';
        LUZ_A(1)<= '0';
        LUZ_A(0)<= '0';
        LUZ_V(1)<= '0';
        LUZ_V(0)<= '0';
    when S3 =>
        LUZ_R(1)<= '0';
        LUZ_R(0)<= '1';
        LUZ_A(1)<= '0';
        LUZ_A(0)<= '0';
        LUZ_V(1)<= '1';
        LUZ_V(0)<= '0';
    when S4 =>
        LUZ_R(1)<= '0';
        LUZ_R(0)<= '1';
        LUZ_A(1)<= '1';
        LUZ_A(0)<= '0';
        LUZ_V(1)<= '0';
        LUZ_V(0)<= '0';        
    when S5 =>
        LUZ_R(1)<= '1';
        LUZ_R(0)<= '1';
        LUZ_A(1)<= '0';
        LUZ_A(0)<= '0';
        LUZ_V(1)<= '0';
        LUZ_V(0)<= '0';        
    when others =>
        LUZ_R(1)<= '0';
        LUZ_R(0)<= '0';
        LUZ_A(1)<= '0';
        LUZ_A(0)<= '0';
        LUZ_V(1)<= '0';
        LUZ_V(0)<= '0';    
        
  end case;
 end process;
end behavioral;