library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux2_32bit_tb is
--  Port ( );
end Mux2_32bit_tb;

architecture Sim of Mux2_32bit_tb is

-- Component Declaration for the Unit Under Test (UUT)

component Mux2_32bit
port ( 
    A : in STD_LOGIC;
    In0 : in STD_LOGIC_VECTOR (31 downto 0);
    In1 : in STD_LOGIC_VECTOR (31 downto 0);
    Z : out STD_LOGIC_VECTOR (31 downto 0)
      );
end component;

--Inputs

    signal A : STD_LOGIC := '0';
    signal In0 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    signal In1 : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
    
--Outputs

    signal Z : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');


begin

	-- Instantiate the Unit Under Test (UUT)
	
   uut: Mux2_32bit PORT MAP (
           A => A,
           In0 => In0, 
           In1 => In1, 
           Z => Z  
        );

 In0 <= "00000000000000000000000000000011";
 In1 <= "00000000000000000000000000001100";
            
stim_proc: process
   begin
   
       wait for 10 ns;
       -- From outsite 		
       A <= '0';

      wait for 10 ns;
       -- From Mux8_16bit	
       A <= '1';

     --wait;
 
   end process;
   

end Sim;
