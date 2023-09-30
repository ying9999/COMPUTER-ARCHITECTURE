library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Shifter_Unit_tb is 
end Shifter_Unit_tb;

architecture Behavioral of Shifter_Unit_tb is 
component Shifter_Unit is 
    port ( 
	       S0 : in std_logic;
           S1 : in std_logic;
		   B : in std_logic_vector (31 downto 0);
		   H : out std_logic_vector (31 downto 0)
		   );
end component;
 
 
signal S0, S1 : std_logic := '0';
signal B : std_logic_vector (31 downto 0) := (others=>'0');
signal H : std_logic_vector (31 downto 0);

begin
    uut : Shifter_Unit PORT MAP (
	S0 => S0,
	S1 => S1,
	B => B,
	H => H
	);
	
	stim : process
    begin
	B <= "00011001001100110110100001100010"; 
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