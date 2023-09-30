library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterFile_tb is
--  Port ( ); We don't need ports 
end RegisterFile_tb;

architecture Sim of RegisterFile_tb is

-- Component Declaration for the Unit Under Test (UUT)

component RegisterFile
Port ( 
           Detination : in STD_LOGIC_VECTOR (4 downto 0);
           Source : in STD_LOGIC_VECTOR (4 downto 0);
           DataIn : in STD_LOGIC_VECTOR (31 downto 0);
           SelectDataMux : in STD_LOGIC;
           CLK : in STD_LOGIC 
          );
end component;

--Inputs

    signal Detination : STD_LOGIC_VECTOR (4 downto 0):= (others => '0');
    signal Source : STD_LOGIC_VECTOR (4 downto 0):= (others => '0');
    signal DataIn : STD_LOGIC_VECTOR (31 downto 0):= (others => '0');
    signal SelectDataMux : std_logic:= '0';
    signal CLK : std_logic:= '0';
      
    constant PERIOD : time := 20ns;
   
begin

	-- Instantiate the Unit Under Test (UUT)
	
   uut: RegisterFile port map (
       Detination => Detination,
       Source => Source,
       DataIn => DataIn,
       SelectDataMux => SelectDataMux,
       CLK => CLK
        );
        
   CLK <= not CLK after PERIOD/2;
   
   stim_proc: process

      begin
      
      -- Loading the 8 registers with distinct values
      
      -- Switch to outsite data
      SelectDataMux <= '0';
   
       -- Detination Register 0 : 19336862
      wait until CLK'event and CLK='1';
      Detination <= "00000";
      DataIn <= "00011001001100110110100001100010"; 
                 
      -- Detination Register 1 : 19336861
      wait until CLK'event and CLK='1';
      Detination <= "00001";
      DataIn <= "00011001001100110110100001100001";
       
      -- Detination Register 2 : 19336860
      wait until CLK'event and CLK='1';
      Detination <= "00010";
      DataIn <= "00011001001100110110100001100000";
           
      -- Detination Register 3 : 19336859
      wait until CLK'event and CLK='1';
      Detination <= "00011";
      DataIn <= "00011001001100110110100001011001";
      
      -- Detination Register 4 : 19336858
      wait until CLK'event and CLK='1';
      Detination <= "00100";
      DataIn <= "00011001001100110110100001011000";
          
      -- Detination Register 5 : 19336857
      wait until CLK'event and CLK='1';
      Detination <= "00101";
      DataIn <= "00011001001100110110100001010111";
      
      -- Detination Register 6: 19336856
      wait until CLK'event and CLK='1';
      Detination <= "00110";
      DataIn <= "00011001001100110110100001010110";
      
      -- Detination Register 7: 19336855
      wait until CLK'event and CLK='1';
      Detination <= "00111";
      DataIn <= "00011001001100110110100001010101";
      
      -- Detination Register 8: 19336854
      wait until CLK'event and CLK='1';
      Detination <= "01000";
      DataIn <= "00011001001100110110100001010100";
      
      -- Detination Register 9: 19336853
      wait until CLK'event and CLK='1';
      Detination <= "01001";
      DataIn <= "00011001001100110110100001010011";
      
      -- Detination Register 10: 19336852
      wait until CLK'event and CLK='1';
      Detination <= "01010";
      DataIn <= "00011001001100110110100001010010";
      
      -- Detination Register 11: 19336851
      wait until CLK'event and CLK='1';
      Detination <= "01011";
      DataIn <= "00011001001100110110100001010001";
      
      -- Detination Register 12: 19336850
      wait until CLK'event and CLK='1';
      Detination <= "01100";
      DataIn <= "00011001001100110110100001010000";
      
      -- Detination Register 13: 19336849
      wait until CLK'event and CLK='1';
      Detination <= "01101";
      DataIn <= "00011001001100110110100001001001";
      
      -- Detination Register 14: 19336848
      wait until CLK'event and CLK='1';
      Detination <= "01110";
      DataIn <= "00011001001100110110100001001000";
      
      -- Detination Register 15: 19336847
      wait until CLK'event and CLK='1';
      Detination <= "01111";
      DataIn <= "00011001001100110110100001000111";
      
      -- Detination Register 16: 19336846
      wait until CLK'event and CLK='1';
      Detination <= "10000";
      DataIn <= "00011001001100110110100001000110";
      
      -- Detination Register 17: 19336845
      wait until CLK'event and CLK='1';
      Detination <= "10001";
      DataIn <= "00011001001100110110100001000101";
      
      -- Detination Register 18: 19336844
      wait until CLK'event and CLK='1';
      Detination <= "10010";
      DataIn <= "00011001001100110110100001000100";
      
      -- Detination Register 19: 19336843
      wait until CLK'event and CLK='1';
      Detination <= "10011";
      DataIn <= "00011001001100110110100001000011";
      
      -- Detination Register 20: 19336842
      wait until CLK'event and CLK='1';
      Detination <= "10100";
      DataIn <= "00011001001100110110100001000010";
      
      -- Detination Register 21: 19336841
      wait until CLK'event and CLK='1';
      Detination <= "10101";
      DataIn <= "00011001001100110110100001000001";
      
      -- Detination Register 22: 19336840
      wait until CLK'event and CLK='1';
      Detination <= "10110";
      DataIn <= "00011001001100110110100001000000";
      
      -- Detination Register 23: 19336839
      wait until CLK'event and CLK='1';
      Detination <= "10111";
      DataIn <= "00011001001100110110100000111001";
      
      -- Detination Register 24: 19336838
      wait until CLK'event and CLK='1';
      Detination <= "11000";
      DataIn <= "00011001001100110110100000111000";
      
      -- Detination Register 25: 19336837
      wait until CLK'event and CLK='1';
      Detination <= "11001";
      DataIn <= "00011001001100110110100000110111";
      
      -- Detination Register 26: 19336836
      wait until CLK'event and CLK='1';
      Detination <= "11010";
      DataIn <= "00011001001100110110100000110110";
      
      -- Detination Register 27: 19336835
      wait until CLK'event and CLK='1';
      Detination <= "11011";
      DataIn <= "00011001001100110110100000110101";
      
      -- Detination Register 28: 19336834
      wait until CLK'event and CLK='1';
      Detination <= "11100";
      DataIn <= "00011001001100110110100000110100";
      
      -- Detination Register 29: 19336833
      wait until CLK'event and CLK='1';
      Detination <= "11101"; 
      DataIn <= "00011001001100110110100000110011";
      
      -- Detination Register 30: 19336832
      wait until CLK'event and CLK='1';
      Detination <= "11110";
      DataIn <= "00011001001100110110100000110010";
      
      -- Detination Register 31: 19336831
      wait until CLK'event and CLK='1';
      Detination <= "11111";
      DataIn <= "00011001001100110110100000110001";
      

      -- Transfering data between source and destination registers
      
      -- Switch to the Mux32_32bit 
      SelectDataMux <= '1';
      
      -- Source Register 0 and Detination Register 16
      wait until CLK'event and CLK='1';
      Source <= "00000";
      Detination <= "10000";
      
      -- Source Register 1 and Detination Register 17
      wait until CLK'event and CLK='1';
      Source <= "00001";
      Detination <= "10001";
      
      -- Source Register 2 and Detination Register 18
      wait until CLK'event and CLK='1';
      Source <= "00010";
      Detination <= "10010";
      
      -- Source Register 3 and Detination Register 19
      wait until CLK'event and CLK='1';
      Source <= "00011";
      Detination <= "10011";
      
      -- Source Register 4 and Detination Register 20
      wait until CLK'event and CLK='1';
      Source <= "00100";
      Detination <= "10100";
      
      -- Source Register 5 and Detination Register 21
      wait until CLK'event and CLK='1';
      Source <= "00101";
      Detination <= "10101";
      
      -- Source Register 6 and Detination Register 22
      wait until CLK'event and CLK='1';
      Source <= "00110";
      Detination <= "10110";
      
      -- Source Register 7 and Detination Register 23
      wait until CLK'event and CLK='1';
      Source <= "00111";
      Detination <= "10111";
      
      -- Source Register 8 and Detination Register 24
      wait until CLK'event and CLK='1';
      Source <= "01000";
      Detination <= "11000";
      
      -- Source Register 9 and Detination Register 25
      wait until CLK'event and CLK='1';
      Source <= "01001";
      Detination <= "11001";
      
      -- Source Register 10 and Detination Register 26
      wait until CLK'event and CLK='1';
      Source <= "01010";
      Detination <= "11010";
      
      -- Source Register 11 and Detination Register 27
      wait until CLK'event and CLK='1';
      Source <= "01011";
      Detination <= "11011";
      
      -- Source Register 12 and Detination Register 28
      wait until CLK'event and CLK='1';
      Source <= "01100";
      Detination <= "11100";
      
      -- Source Register 13 and Detination Register 29
      wait until CLK'event and CLK='1';
      Source <= "01101";
      Detination <= "11101"; 
            
      -- Source Register 14 and Detination Register 30
      wait until CLK'event and CLK='1';
      Source <= "01110";
      Detination <= "11110";
      
      -- Source Register 15 and Detination Register 31
      wait until CLK'event and CLK='1';
      Source <= "01111";
      Detination <= "11111";
      
      -- Source Register 31 and Detination Register 0
      wait until CLK'event and CLK='1';
      Source <= "11111";
      Detination <= "00000";
      
      -- Source Register 30 and Detination Register 1
      wait until CLK'event and CLK='1';
      Source <= "11110";
      Detination <= "00001";
      
      -- Source Register 29 and Detination Register 2
      wait until CLK'event and CLK='1';
      Source <= "11101";
      Detination <= "00010";
      
      -- Source Register 28 and Detination Register 3
      wait until CLK'event and CLK='1';
      Source <= "11100";
      Detination <= "00011";
      
      -- Source Register 27 and Detination Register 4
      wait until CLK'event and CLK='1';
      Source <= "11011";
      Detination <= "00100";
      
      -- Source Register 26 and Detination Register 5
      wait until CLK'event and CLK='1';
      Source <= "11010";
      Detination <= "00101";
      
      -- Source Register 25 and Detination Register 6
      wait until CLK'event and CLK='1';
      Source <= "11001";
      Detination <= "00110";
     
     -- Source Register 24 and Detination Register 7
      wait until CLK'event and CLK='1';
      Source <= "11000";
      Detination <= "00111";
      
      -- Source Register 23 and Detination Register 8
      wait until CLK'event and CLK='1';
      Source <= "10111";
      Detination <= "01000";
      
      -- Source Register 22 and Detination Register 9
      wait until CLK'event and CLK='1';
      Source <= "10110";
      Detination <= "01001";
      
      -- Source Register 21 and Detination Register 10
      wait until CLK'event and CLK='1';
      Source <= "10101";
      Detination <= "01010";
      
      -- Source Register 20 and Detination Register 11
      wait until CLK'event and CLK='1';
      Source <= "10100";
      Detination <= "01011";
      
      -- Source Register 19 and Detination Register 12
      wait until CLK'event and CLK='1';
      Source <= "10011";
      Detination <= "01100";
      
      -- Source Register 18 and Detination Register 13
      wait until CLK'event and CLK='1';
      Source <= "10010";
      Detination <= "01101";
      
      -- Source Register 17 and Detination Register 14
      wait until CLK'event and CLK='1';
      Source <= "10001";
      Detination <= "01110";
      
      -- Source Register 16 and Detination Register 15
      wait until CLK'event and CLK='1';
      Source <= "10000";
      Detination <= "01111";
      
      
      wait;
      
   end process;

end Sim;

