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
    type STATES is (S0, S1, S2, S3, S4);--los estados son posibles conbinaciones de los dos semaforos
    signal current_state: STATES := S0;--Indica el estado en el que se encuentra el programa
    signal next_state: STATES;--Indica el siguiente estado
    signal tiempo_inicio: NATURAL;-- segundo en el que se inicia una iteracion
    signal a: NATURAL := 0;--si a=0 la iteracion que vemos es la primera, mientras que si a/=0 la iteracion es otra
    signal k: NATURAL:=0;--k es el segundo en el que estamos desde el inicio de la cuenta
   
begin

state_register: process (RESET, CLK)
begin
    
 if rising_edge(CLK ) then
    current_state<=next_state;--introduce el siguiente estado en el estado actual
    if RESET = '0' then--si pulsamos RESET volvemos al estado S0
        current_state <= S0;
        
    end if;
 end if;
 end process;
time_register: process (RESET, CLK2)
begin
    
 if rising_edge(CLK2 ) then
    k<=k+1;
    if RESET = '0' then--si pulsamos RESET volvemos al estado S0
        k<=0;
        a<=0;
    end if;
 end if;
 
end process;
nextstate_decod: process (SENSOR, current_state, k)
 begin
 
    next_state <= current_state;
 case current_state is--cambio de un estado a otro
    when S0 =>
        if SENSOR = '1' and a=0 then --El programa debe esperar almenos 20s entre una secuencia y la siguiente.
            tiempo_inicio<=k;
            next_state <= S1;--se enciende la luz ambar del semaforo principal
            a<=1;
        elsif SENSOR = '1' and (k-tiempo_inicio)>=45 and a/=0 then
            tiempo_inicio<=k;
            next_state <= S1;--se enciende la luz ambar del semaforo principal
        end if;
    when S1 =>    
        if (k-tiempo_inicio)=3 then  --a los tres segundos el primer semaforo se pone en rojo
            next_state <= S2;
        end if;
    when S2 => 
         if (k-tiempo_inicio)=6 then   --tras otros 3s de seguridad el segundo semaforo se pone en verde 
            next_state <= S3;  
         elsif (k-tiempo_inicio)=22 then  --finalente el semaforo se pone en rojo y vuelve al primer estado en el que el primer semaforo esta en verde
            next_state <= S0;
         end if;
    when S3 =>
         if (k-tiempo_inicio)=16 then  --el semaforo permanece en verde 20s , para que pasen los coches que esten parados pasen y luego se pone en ambar
            next_state <= S4;
         end if;
    when S4 =>
         if (k-tiempo_inicio)=19 then  --El semaforo permanece en ambar 3s 
            next_state <= S2;
         end if;
--    when S5 =>
--         if (k-tiempo_inicio)=32 then  --El semaforo permanece en ambar 3s 
--            next_state <= S0;
--         end if;
    when others =>--En caso de error se vuelve al primer estado
        next_state <= S0;
 end case;
 end process;
 output_decod: process (current_state)
 begin
 case current_state is
     when S0 =>--   semaforo 1==>Verde    semaforo2==>rojo
       LUZ_R(1)<= '1';
        LUZ_R(0)<= '0';
        LUZ_A(1)<= '0';
        LUZ_A(0)<= '0';
        LUZ_V(1)<= '0';
        LUZ_V(0)<= '1';
     when S1 =>--   semaforo 1==>Ambar    semaforo2==>rojo
        LUZ_R(1)<= '1';
        LUZ_R(0)<= '0';
        LUZ_A(1)<= '0';
        LUZ_A(0)<= '1';
        LUZ_V(1)<= '0';
        LUZ_V(0)<= '0';
    when S2 =>--   semaforo 1==>Rojo    semaforo2==>rojo
        LUZ_R(1)<= '1';
        LUZ_R(0)<= '1';
        LUZ_A(1)<= '0';
        LUZ_A(0)<= '0';
        LUZ_V(1)<= '0';
        LUZ_V(0)<= '0';
    when S3 =>--   semaforo 1==>Rojo    semaforo2==>Verde
        LUZ_R(1)<= '0';
        LUZ_R(0)<= '1';
        LUZ_A(1)<= '0';
        LUZ_A(0)<= '0';
        LUZ_V(1)<= '1';
        LUZ_V(0)<= '0';
    when S4 =>--   semaforo 1==>Rojo    semaforo2==>Ambar
        LUZ_R(1)<= '0';
        LUZ_R(0)<= '1';
        LUZ_A(1)<= '1';
        LUZ_A(0)<= '0';
        LUZ_V(1)<= '0';
        LUZ_V(0)<= '0';  
--    when S5 =>--   semaforo 1==>Rojo    semaforo2==>rojo
--        LUZ_R(1)<= '1';
--        LUZ_R(0)<= '1';
--        LUZ_A(1)<= '0';
--        LUZ_A(0)<= '0';
--        LUZ_V(1)<= '0';
--        LUZ_V(0)<= '0';            
    when others =>-- todos los semaforos apagados en caso de error
        LUZ_R(1)<= '0';
        LUZ_R(0)<= '0';
        LUZ_A(1)<= '0';
        LUZ_A(0)<= '0';
        LUZ_V(1)<= '0';
        LUZ_V(0)<= '0';    
        
  end case;
 end process;
end behavioral;