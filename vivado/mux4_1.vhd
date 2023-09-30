library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity mux_4to1 is
 port(
 
     A,B,C,D : in STD_LOGIC;
     s0,s1: in STD_LOGIC;
     Z: out STD_LOGIC
  );
end mux_4to1;
 
architecture Behavioral of mux_4to1 is
begin

Z <= A after 2 ns  WHEN (s0 = '0'and s1 = '0') ELSE
     B after 2 ns  WHEN (s0 = '1'and s1 = '0') ELSE
     C after 2 ns  WHEN (s0 = '0' and s1 = '1') ELSE
     D after 2 ns  WHEN (s0 = '1'and s1 = '1') ELSE
     '0' after 2 ns;

end Behavioral;
