library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic_circuit is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           Z : out STD_LOGIC );
end logic_circuit;

architecture Behavioral of logic_circuit is
component mux_4to1
port(
 
     A,B,C,D : in STD_LOGIC;
     s0,s1: in STD_LOGIC;
     Z: out STD_LOGIC
  );
end component;

signal In0, In1, In2, In3 : std_logic;

begin

    In0 <= (A and B) when (S0<='0' and S1<='0');
    In1 <= (A or B) when (S0<='1' and S1<='0');
    In2 <= (A xor B) when (S0<='0' and S1<='1');
    In3 <= (not A) when (S0<='1' and S1<='1');
	
	logic_circuit_1bit: mux_4to1 port map( In0, In1, In2, In3, S0, S1, Z );

end Behavioral;
