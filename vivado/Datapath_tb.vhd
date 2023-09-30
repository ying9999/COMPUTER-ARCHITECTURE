library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Datapath_tb is 
end Datapath_tb;

architecture Behavioral of Datapath_tb is
component Datapath is
        port (
	           DataIn : in std_logic_vector(31 downto 0);
			   CLK : in std_logic;
			   A_address : in std_logic_vector(4 downto 0);
			   B_address : in std_logic_vector(4 downto 0);
			   Detination : in std_logic_vector(4 downto 0);
			   write : in std_logic;
			   MB_select : in std_logic;
			   MD_select : in std_logic;
			   Constant_in : in std_logic_vector(31 downto 0);
			   FS : in std_logic_vector(4 downto 0);
			   V : in std_logic;
			   C : in std_logic;
			   N : in std_logic;
			   Z : in std_logic;
			   AddressOut : out std_logic_vector(31 downto 0);
			   DataOut : out std_logic_vector(31 downto 0)
			   );
end component;

signal DataIn, Constant_in : std_logic_vector (31 downto 0) := (others=>'0');
signal CLK, write, MB_select, MD_select, V, C, N, Z : std_logic := '0';
signal A_address, B_address, Detination, FS : std_logic_vector (4 downto 0) := (others=>'0');
signal AddressOut, DataOut : std_logic_vector (31 downto 0);

begin
     uut : Datapath PORT MAP (
	       DataIn => DataIn,
		   CLK => CLK,
		   A_address => A_address,
		   B_address => B_address,
		   Detination => Detination,
		   write => write,
		   MB_select => MB_select,
		   MD_select => MD_select,
		   Constant_in => Constant_in,
		   FS => FS,
		   V => V,
		   N => N,
		   C => C,
		   Z => Z,
		   AddressOut => AddressOut,
		   DataOut => DataOut
		   );
		   
	 CLK <= not CLK after PERIOD/2;
		   
	stim : process
    begin
	
	begin
      
      -- Loading the 32 registers with distinct values
      
      -- Switch to outsite data
      write <= '1';
	  MD_select <= '1';
	  MB_select <= '0';
   
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
      