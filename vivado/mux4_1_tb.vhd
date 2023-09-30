LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY mux4to1_tb IS
END mux4to1_tb;
 
ARCHITECTURE Behavioral OF mux4to1_tb IS
 
   -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux_4to1
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         D : IN  std_logic;
         s0 : IN  std_logic;
         s1 : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
 
   -- Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';
   signal D : std_logic := '0';
   signal s0 : std_logic := '0';
   signal s1 : std_logic := '0';
 
    --Outputs
   signal Z : std_logic;
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: mux_4to1 PORT MAP (
          A => A,
          B => B,
          C => C,
          D => D,
          s0 => s0,
          s1 => s1,
          Z => Z
        );
 
   -- Stimulus process
   stim_proc: process
   begin
     wait for 2 ns; 
    A <= '1';
    B <= '0';
    C <= '1';
    D <= '0';       
 
    s0 <= '0'; s1 <= '0';
 
      wait for 2 ns; 
 
    s0 <= '1'; s1 <= '0';
 
      wait for 2 ns; 
 
    s0 <= '0'; s1 <= '1';
 
        wait for 2 ns;   
 
    s0 <= '1'; s1 <= '1';  
 
        wait for 2 ns;   
 
    end process;
 
end Behavioral;

