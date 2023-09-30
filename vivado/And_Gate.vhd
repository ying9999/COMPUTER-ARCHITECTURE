library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity And_Gate is 
    port (
	       In0 : in std_logic;
		   In1 : in std_logic;
		   Z : out std_logic 
		 );
end And_Gate;

architecture Behavioral of And_Gate is 
  begin 
     Z <= In0 and In1;
	 
end Behavioral;