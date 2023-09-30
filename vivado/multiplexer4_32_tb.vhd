library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux32_32bit_tb is
--  Port ( ); We don't need ports
end Mux32_32bit_tb;

architecture Sim of Mux32_32bit_tb is

-- Component Declaration for the Unit Under Test (UUT)

component Mux32_32bit
port ( 
    A : in STD_LOGIC_VECTOR (4 downto 0);
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
    Z : out STD_LOGIC_VECTOR (31 downto 0)
      );
end component;

--Inputs

    signal A : STD_LOGIC_VECTOR (4 downto 0):= "00000";
    signal In0 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In1 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In2 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In3 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In4 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In5 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In6 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In7 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
	signal In8 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In9 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In10 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In11 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In12 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In13 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In14 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In15 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In16 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In17 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
	signal In18 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In19 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In20 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In21 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
	signal In22 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In23 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In24 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In25 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In26 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In27 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
	signal In28 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In29 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In30 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In31 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
   
--Outputs

    signal Z : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');

begin

	-- Instantiate the Unit Under Test (UUT)
	
   uut: Mux32_32bit PORT MAP (
           A => A,
           In0 => In0, 
           In1 => In1, 
           In2 => In2, 
           In3 => In3, 
		   In4 => In4, 
           In5 => In5, 
           In6 => In6, 
           In7 => In7, 
		   In8 => In8, 
           In9 => In9, 
           In10 => In10, 
           In11 => In11, 
		   In12 => In12, 
           In13 => In13, 
           In14 => In14, 
           In15 => In15, 
		   In16 => In16, 
           In17 => In17, 
		   In18 => In18, 
           In19 => In19, 
           In20 => In20, 
           In21 => In21, 
		   In22 => In22, 
           In23 => In23, 
           In24 => In24, 
           In25 => In25,
		   In26 => In26, 
           In27 => In27, 
		   In28 => In28, 
           In29 => In29, 
           In30 => In30, 
           In31 => In31, 
           Z => Z  
        );

 In0 <= "00000000000000000000000000000011";
 In1 <= "00000000000000000000000000001100";
 In2 <= "00000000000000000000000000110000"; 
 In3 <= "00000000000000000000000011000000";
 In4 <= "00000000000000000000001100000000";
 In5 <= "00000000000000000000110000000000";
 In6 <= "00000000000000000011000000000000"; 
 In7 <= "00000000000000001100000000000000";
 In8 <= "00000000000000110000000000000000";
 In9 <= "00000000000011000000000000000000";
 In10 <= "00000000001100000000000000000000";
 In11 <= "00000000110000000000000000000000";
 In12 <= "00000011000000000000000000000000";
 In13 <= "00001100000000000000000000000000";
 In14 <= "00110000000000000000000000000000";
 In15 <= "11000000000000000000000000000000";
 In16 <= "11000000000000000000000000000011";
 In17 <= "11000000000000000000000000001100";
 In18 <= "11000000000000000000000000110000";
 In19 <= "11000000000000000000000011000000";
 In20 <= "11000000000000000000001100000000";
 In21 <= "11000000000000000000110000000000";
 In22 <= "11000000000000000011000000000000";
 In23 <= "11000000000000001100000000000000";
 In24 <= "11000000000000110000000000000000";
 In25 <= "11000000000011000000000000000000";
 In26 <= "11000000001100000000000000000000";
 In27 <= "11000000110000000000000000000000";
 In28 <= "11000011000000000000000000000000";
 In29 <= "11001100000000000000000000000000";
 In30 <= "11110000000000000000000000000000";
 In31 <= "11110000000000000000000000000011";
 
 

stim_proc: process
   begin
       -- Q0		
       A <= "00000";

      wait for 10 ns;
       -- Q1	
       A <= "00001";

      wait for 10 ns;	
      -- Q2
       A <= "00010";
       
      wait for 10 ns;	
      -- Q3
       A <= "00011";    
	   
	   wait for 10 ns;	
      -- Q4
       A <= "00100";    
	   
	    wait for 10 ns;	
      -- Q5
       A <= "00101";    
	   
	    wait for 10 ns;	
      -- Q6
       A <= "00110";    
	   
	   wait for 10 ns;	
      -- Q7
       A <= "00111";    
	   
	   wait for 10 ns;	
      -- Q8
       A <= "01000";   

	    wait for 10 ns;	
      -- Q9
       A <= "01001";   
	   
	    wait for 10 ns;	
      -- Q10
       A <= "01010";  

	    wait for 10 ns;	
      -- Q11
       A <= "01011";  
	   
	   wait for 10 ns;	
      -- Q12
       A <= "01100";  
	   
	   wait for 10 ns;	
      -- Q13
       A <= "01101";  
	   
	   wait for 10 ns;	
      -- Q14
       A <= "01110";  
	   
	   wait for 10 ns;	
      -- Q15
       A <= "01111";  
	   
	   wait for 10 ns;	
      -- Q16
       A <= "10000";  
	   
	   wait for 10 ns;	
      -- Q17
       A <= "10001";  
	   
	    wait for 10 ns;	
      -- Q18
       A <= "10010";  
	   
	   wait for 10 ns;	
      -- Q19
       A <= "10011";  
	   
	   wait for 10 ns;	
      -- Q20
       A <= "10100";  
	   
	   wait for 10 ns;	
      -- Q21
       A <= "10101";  
	   
	   wait for 10 ns;	
      -- Q22
       A <= "10110";  
	   
	   wait for 10 ns;	
      -- Q23
       A <= "10111";  
	   
	   wait for 10 ns;	
      -- Q24
       A <= "11000";  
	   
	   wait for 10 ns;	
      -- Q25
       A <= "11001";  
	   
	   wait for 10 ns;	
      -- Q26
       A <= "11010";  
	   
	   wait for 10 ns;	
      -- Q27
       A <= "11011";  
	   
	   wait for 10 ns;	
      -- Q28
       A <= "11100";  
	   
	   wait for 10 ns;	
      -- Q29
       A <= "11101";  
	   
	   wait for 10 ns;	
      -- Q30
       A <= "11110";  
	   
	   wait for 10 ns;	
      -- Q31
       A <= "11111";  
	   
     
     wait;
 
   end process;
   
end Sim;
