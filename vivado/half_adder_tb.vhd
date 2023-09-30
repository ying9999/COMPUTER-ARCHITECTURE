library IEEE;
use IEEE.std_logic_1164.all;

entity HalfAdder_tb is
end entity;

architecture Behavioral of HalfAdder_tb is
component HalfAdder is
port( A : IN std_logic;
B : IN std_logic;
sum : OUT std_logic;
carry : OUT std_logic);
end component;

signal A,B : std_logic := '0';
signal sum,carry : std_logic;

begin

uut: HalfAdder port map(
A => A, 
B => B,
sum => sum,
carry => carry
);

stim: process
begin

a <= '0';
b <= '0';
wait for 2 ns;

a <= '0';
b <= '1';
wait for 2 ns;

a <= '1';
b <= '0';
wait for 2 ns;

a <= '1';
b <= '1';
wait for 2 ns;

end process;

end Behavioral;