library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux2_32bit is
    Port ( A : in STD_LOGIC;
           In0 : in STD_LOGIC_VECTOR (31 downto 0);
           In1 : in STD_LOGIC_VECTOR (31 downto 0);
           Z : out STD_LOGIC_VECTOR (31 downto 0));
end Mux2_32bit;

architecture Behavioral of Mux2_32bit is

begin

Z <= In0 after 2 ns  WHEN A = '0' ELSE
     In1 after 2 ns  WHEN A = '1' ELSE
     "00000000000000000000000000000000" after 5 ns;
     
end Behavioral;