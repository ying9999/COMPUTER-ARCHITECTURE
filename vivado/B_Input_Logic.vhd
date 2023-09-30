library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity B_input_logic is
 Port ( 
       B : in STD_LOGIC_VECTOR (31 downto 0);
       S0 : in STD_LOGIC;
       S1 : in STD_LOGIC;
       Y : out STD_LOGIC_VECTOR (31 downto 0));

end B_input_logic;

architecture Behavioral of B_input_logic is
begin 
Y <= "00000000000000000000000000000000" when (S0='0' and S1='0') else
     B when (S0='1' and S1='0') else
     (not B) when (S0='0' and S1='1') else
     "11111111111111111111111111111111" when (S0='1' and S1='1') else
	 "00000000000000000000000000000000";
	 
	 end Behavioral;