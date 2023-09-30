library IEEE;
use IEEE.std_logic_1164.all;

entity FullAdder is
port(
A : in std_logic;
B : in std_logic;
C : in std_logic;
S : out std_logic;
Cout : out std_logic);

end FullAdder;

architecture Behavioral of FullAdder is
signal sum1, sum2, carry1, carry2: std_logic;

component HalfAdder is 
Port( 
A : in std_logic;
B : in std_logic;
sum : out std_logic;
carry : out std_logic);
end component;

begin 
HA1 : HalfAdder
port map(
A => A,
B => B,
sum => sum1,
carry => carry1);

HA2 : HalfAdder
port map(
A => C,
B => sum1,
sum => sum2,
carry => carry2);

S <= sum2;
Cout <= carry1 or carry2;

end Behavioral;