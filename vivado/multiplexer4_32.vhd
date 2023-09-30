library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux32_32bit is
    Port ( A : in STD_LOGIC_VECTOR (4 downto 0);
           In0 : in STD_LOGIC_VECTOR (31 downto 0);
           In1 : in STD_LOGIC_VECTOR (31 downto 0);
           In2 : in STD_LOGIC_VECTOR (31 downto 0);
           In3 : in STD_LOGIC_VECTOR (31 downto 0);
		   In4 : in STD_LOGIC_VECTOR (31 downto 0);
           In5 : in STD_LOGIC_VECTOR (31 downto 0);
           In6 : in STD_LOGIC_VECTOR (31 downto 0);
           In7 : in STD_LOGIC_VECTOR (31 downto 0);
		   In8 : in STD_LOGIC_VECTOR (31 downto 0);
           In9 : in STD_LOGIC_VECTOR (31 downto 0);
           In10 : in STD_LOGIC_VECTOR (31 downto 0);
		   In11 : in STD_LOGIC_VECTOR (31 downto 0);
           In12 : in STD_LOGIC_VECTOR (31 downto 0);
           In13 : in STD_LOGIC_VECTOR (31 downto 0);
           In14 : in STD_LOGIC_VECTOR (31 downto 0);
		   In15 : in STD_LOGIC_VECTOR (31 downto 0);
           In16 : in STD_LOGIC_VECTOR (31 downto 0);
           In17 : in STD_LOGIC_VECTOR (31 downto 0);
		   In18 : in STD_LOGIC_VECTOR (31 downto 0);
           In19 : in STD_LOGIC_VECTOR (31 downto 0);
           In20 : in STD_LOGIC_VECTOR (31 downto 0);
		   In21 : in STD_LOGIC_VECTOR (31 downto 0);
           In22 : in STD_LOGIC_VECTOR (31 downto 0);
           In23 : in STD_LOGIC_VECTOR (31 downto 0);
           In24 : in STD_LOGIC_VECTOR (31 downto 0);
		   In25 : in STD_LOGIC_VECTOR (31 downto 0);
           In26 : in STD_LOGIC_VECTOR (31 downto 0);
           In27 : in STD_LOGIC_VECTOR (31 downto 0);
		   In28 : in STD_LOGIC_VECTOR (31 downto 0);
           In29 : in STD_LOGIC_VECTOR (31 downto 0);
           In30 : in STD_LOGIC_VECTOR (31 downto 0);
		   In31 : in STD_LOGIC_VECTOR (31 downto 0);
           Z : out STD_LOGIC_VECTOR (31 downto 0));
end Mux32_32bit;

architecture Behavioral of Mux32_32bit is

begin

Z <= In0 after 5 ns  WHEN A ="00000" ELSE
     In1 after 5 ns  WHEN A ="00001" ELSE
     In2 after 5 ns  WHEN A ="00010" ELSE
     In3 after 5 ns  WHEN A ="00011" ELSE
	 In4 after 5 ns  WHEN A ="00100" ELSE
     In5 after 5 ns  WHEN A ="00101" ELSE
     In6 after 5 ns  WHEN A ="00110" ELSE
     In7 after 5 ns  WHEN A ="00111" ELSE
	 In8 after 5 ns  WHEN A ="01000" ELSE
     In9 after 5 ns  WHEN A ="01001" ELSE
     In10 after 5 ns  WHEN A ="01010" ELSE
     In11 after 5 ns  WHEN A ="01011" ELSE
	 In12 after 5 ns  WHEN A ="01100" ELSE
     In13 after 5 ns  WHEN A ="01101" ELSE
     In14 after 5 ns  WHEN A ="01110" ELSE
     In15 after 5 ns  WHEN A ="01111" ELSE
	 In16 after 5 ns  WHEN A ="10000" ELSE
     In17 after 5 ns  WHEN A ="10001" ELSE
     In18 after 5 ns  WHEN A ="10010" ELSE
     In19 after 5 ns  WHEN A ="10011" ELSE
	 In20 after 5 ns  WHEN A ="10100" ELSE
     In21 after 5 ns  WHEN A ="10101" ELSE
     In22 after 5 ns  WHEN A ="10110" ELSE
     In23 after 5 ns  WHEN A ="10111" ELSE
	 In24 after 5 ns  WHEN A ="11000" ELSE
     In25 after 5 ns  WHEN A ="11001" ELSE
     In26 after 5 ns  WHEN A ="11010" ELSE
     In27 after 5 ns  WHEN A ="11011" ELSE
	 In28 after 5 ns  WHEN A ="11100" ELSE
     In29 after 5 ns  WHEN A ="11101" ELSE
     In30 after 5 ns  WHEN A ="11110" ELSE
     In31 after 5 ns  WHEN A ="11111" ELSE
     "00000000000000000000000000000000" after 5 ns;

end Behavioral;
