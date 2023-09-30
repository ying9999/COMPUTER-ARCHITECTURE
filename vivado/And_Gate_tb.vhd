library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity And_Gate_tb is 
end And_Gate_tb;

architecture Behavioral of And_Gate is 
component And_Gate is 
    port (
	       In0 : in std_logic;
		   In1 : in std_logic;
		   Z : out std_logic 
		 ); 
end component;

signal In0, In1 ：std_logic := '0';
signal Z : std_logic;

begin 
uut : And_Gate PORT MAP (
      In0 => In0,
	  In1 => In1,
	  Z => Z
	  );
	  
	stim : process
    begin
	    In0 <= '0'; In1 <= '0';
        wait for 2 ns;
        In0 <= '0'; In1 <= '1';
        wait for 2 ns;
        In0 <= '1'; In1 <= '0';
        wait for 2 ns;
        In0 <= '1'; In1 <= '1';
        wait for 2 ns;
		
end process;
end Behavioral;
	