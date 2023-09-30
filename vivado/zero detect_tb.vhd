LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY zeroDetectTest IS
END zeroDetectTest;
 
ARCHITECTURE behavior OF zeroDetectTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT zeroDetect
    PORT(
         input : IN  std_logic_vector(31 downto 0);
         output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs 
   signal output : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: zeroDetect PORT MAP (
          input => input,
          output => output
        );

   -- Clock process definitions
 
 
   -- Stimulus process
   stim_proc: process
	
   begin		

		input <= "00000000000000000000000000000111";
		
		wait for 2 ns;
		
		input <= "00000000000000000000000000000000";
		
		wait for 2 ns;

      -- insert stimulus here 

   end process;

END;