library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity B_input_logic_tb is
   
end B_input_logic_tb;

architecture Behavioral of B_input_logic_tb is
COMPONENT B_input_logic  Port ( B : in STD_LOGIC_VECTOR (31 downto 0);
           S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           Y : out STD_LOGIC_VECTOR (31 downto 0));
END COMPONENT;

signal B, Y: std_logic_vector(31 downto 0) := (others=>'0');
signal S0,S1 : std_logic := '0';

begin
uut: B_input_logic PORT MAP(
    Y=>Y,
    B=>B,
    S0=>S0,
    S1=>S1
  
    );
    stim_proc: process
    begin
    B<= "00011001001100110110100001100010";
    S0<='0';
    S1<='0';
    wait for 2 ns;
    S0<='1';
    S1<='0';
    wait for 2 ns;
    S0<='0';
    S1<='1';
    wait for 2 ns;
    S0<='1';
    S1<='1';
    wait for 2 ns;
    
end process;
end Behavioral;