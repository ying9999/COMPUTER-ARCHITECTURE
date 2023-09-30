library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zeroDetect is
	port( input : in std_logic_vector(31 downto 0);
			output : out std_logic);
end zeroDetect;

architecture Behavioral of zeroDetect is

begin	

	output <= (not(input(0) or input(1) or input(2) or input(3) or input(4) or input(5) or input(6) or input(7) or input(8) or input(9) or input(10) or input(11) or input(12) or input(13) or input(14) or input(15) or input(16) or input(17) or input(18) or input(19) or input(20) or input(21) or input(22) or input(23) or input(24) or input(25) or input(26) or input(27) or input(28) or input(29) or input(30) or input(31))) after 1 ns;

end Behavioral;
