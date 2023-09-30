library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Negative_Detect_tb is 
end Negative_Detect_tb;

architecture Behavioral of Negative_Detect is 
component Negative_Detect is 
            port (
	           I : in std_logic_vector (31 downto 0);
			   R : out std_logic 
			  );
end component;

signal I : std_logic_vector (31 downto 0) := (others=>'0');
signal R : std_logic; 

begin 
uut : Negative_Detect port map (
      I => I,
	  R => R 
	  );
	  
	stim : process
    begin
	I <= "00000011000000000000000000000000";
	wait for 2 ns;
	I <= "10000011000000000000000000000000";
	wait for 2 ns;
	
end process;
end Behavioral;
	