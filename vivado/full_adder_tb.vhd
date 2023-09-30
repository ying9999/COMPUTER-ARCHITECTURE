LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY FullAdder_tb IS
END FullAdder_tb;
 
ARCHITECTURE Behavioral OF FullAdder_tb IS

 COMPONENT FullAdder
 PORT(
 A : IN std_logic;
 B : IN std_logic;
 C : IN std_logic;
 S : OUT std_logic;
 Cout : OUT std_logic
 );
 END COMPONENT;
 --Inputs
 signal A : std_logic := '0';
 signal B : std_logic := '0';
 signal C : std_logic := '0';
 --Outputs
 signal S : std_logic;
 signal Cout : std_logic;
 
BEGIN
 --Instantiate the Unit Under Test (UUT)
 uut: FullAdder PORT MAP (
 A => A,
 B => B,
 C => C,
 S => S,
 Cout => Cout
 );
 --Stimulus process
 stim_proc: process
 begin

 A <= '0';
 B <= '0';
 C <= '0';
 wait for 2 ns;
 
 A <= '0';
 B <= '0';
 C <= '1';
 wait for 2 ns;
 
 A <= '0';
 B <= '1';
 C <= '0';
 wait for 2 ns;
 
 A <= '0';
 B <= '1';
 C <= '1';
 wait for 2 ns;
 
 A <= '1';
 B <= '0';
 C <= '0';
 wait for 2 ns;
 
 A <= '1';
 B <= '0';
 C <= '1';
 wait for 2 ns;
 
 A <= '1';
 B <= '1';
 C <= '0';
 wait for 2 ns;
 
 A <= '1';
 B <= '1';
 C <= '1';
 wait for 2 ns;
 
 end process;
 
end Behavioral;