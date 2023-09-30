library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Logic_Circuit_32_tb is
--  Port ( );
end Logic_Circuit_32_tb;

architecture Behavioral of Logic_Circuit_32_tb is
component Logic_Circuit_32 is
  Port (A : in std_logic_vector (31 downto 0);
        B : in std_logic_vector (31 downto 0);
        S0 : in std_logic;
        S1 : in std_logic;
        Z : out std_logic_vector (31 downto 0));
end component;

signal A, B : std_logic_vector (31 downto 0) := (others=>'0');
signal S0, S1 : std_logic := '0';
signal Z : std_logic_vector (31 downto 0);

begin
    uut : Logic_Circuit_32 PORT MAP (
        A => A,
        B => B,
        S0 => S0,
        S1 => S1,
        Z => Z);
        
    stim : process
    begin
        A <= "00011001001100110110100001100010"; B <= "00000000000000000000000000000001";
        S0 <= '0'; S1 <= '0';
        wait for 2 ns;
        S0 <= '1'; S1 <= '0';
        wait for 2 ns;
        S0 <= '0'; S1 <= '1';
        wait for 2 ns;
        S0 <= '1'; S1 <= '1';
        wait for 2 ns;
    end process;
        

end Behavioral;