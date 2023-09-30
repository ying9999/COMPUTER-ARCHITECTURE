library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic_circuit_tb is
--  Port ( );
end logic_circuit_tb;

architecture Behavioral of logic_circuit_tb is
component logic_circuit is
   Port (  A : in STD_LOGIC;
           B : in STD_LOGIC;
           S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           Z : out STD_LOGIC );
end component;

signal A, B, S0, S1 : std_logic := '0';
signal Z : std_logic;

begin
    uut : logic_circuit PORT MAP (
        A => A,
        B => B,
        S0 => S0,
        S1 => S1,
        Z => Z);
        
    stim : process
    begin
        wait for 2 ns; 
        A <= '1'; B <= '1';
        S0 <= '0'; S1 <= '0';
        wait for 2 ns;
         A <= '0'; B <= '1';
        S0 <= '1'; S1 <= '0';
        wait for 2 ns;
         A <= '1'; B <= '1';
        S0 <= '0'; S1 <= '1';
        wait for 2 ns;
         A <= '0'; B <= '1';
        S0 <= '1'; S1 <= '1';
        wait for 2 ns;
    end process;
        
end Behavioral;