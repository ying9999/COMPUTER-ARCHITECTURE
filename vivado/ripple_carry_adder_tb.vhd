LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Ripple_Adder_tb IS
END Ripple_Adder_tb;
 
ARCHITECTURE Behavioral OF Ripple_Adder_tb IS
 
--Component Declaration for the Unit Under Test (UUT)
 
COMPONENT Ripple_Adder
PORT(
A : IN std_logic_vector(31 downto 0);
B : IN std_logic_vector(31 downto 0);
Cin : IN std_logic;
S : OUT std_logic_vector(31 downto 0);
V : out STD_LOGIC;
Cout : OUT std_logic
);
END COMPONENT;
 
--Inputs
signal A : std_logic_vector(31 downto 0) := (others => '0');
signal B : std_logic_vector(31 downto 0) := (others => '0');
signal Cin : std_logic := '0';
 
--Outputs
signal S : std_logic_vector(31 downto 0);
signal V : STD_LOGIC;
signal Cout : std_logic;
 
BEGIN
 
--Instantiate the Unit Under Test (UUT)
uut: Ripple_Adder PORT MAP (
A => A,
B => B,
Cin => Cin,
S => S,
V => V,
Cout => Cout
);
 --Stimulus process
stim_proc: process
begin

A <= "00011001001100110110100001100010";
B <= "00000000000000000000000000000001";
   
    wait for 2 ns;
 
A <= "00011001001100110110100001100010";
B <= "11111111111111111111111111111111";
    
    wait for 2 ns;
 
A <= "11100110110011001001011110011110";
B <= "00000000000000000000000000000001";
    
    wait for 2 ns;

A <= "11100110110011001001011110011110";
B <= "11111111111111111111111111111111";
    
    wait for 2 ns;

end process;
 
end Behavioral;
