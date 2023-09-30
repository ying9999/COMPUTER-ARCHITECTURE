library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Datapath is 
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
end Datapath;

architecture Behavioral of Datapath is 
component RegisterFile is 
        Port ( 
		   Detination : in STD_LOGIC_VECTOR (4 downto 0);
           A_select : in STD_LOGIC_VECTOR (4 downto 0);
           B_select : in STD_LOGIC_VECTOR (4 downto 0);
           DataIn : in STD_LOGIC_VECTOR (31 downto 0);
           write : in std_logic;
           CLK : in STD_LOGIC;
           A : out std_logic_vector (31 downto 0);
           B : out std_logic_vector (31 downto 0)
          );
end component;

component Function_Unit is 
        port ( 
	        A : in std_logic_vector(31 downto 0);
			B : in std_logic_vector(31 downto 0);
			FS : in std_logic_vector(4 downto 0);
			V : out std_logic;
			C : out std_logic;
			N : out std_logic;
			Z : out std_logic;
			F : out std_logic_vector(31 downto 0));
end component;

component Mux2_32bit is 
         Port ( A : in STD_LOGIC;
           In0 : in STD_LOGIC_VECTOR (31 downto 0);
           In1 : in STD_LOGIC_VECTOR (31 downto 0);
           Z : out STD_LOGIC_VECTOR (31 downto 0));
end component;

signal MUX_B, MUX_D, A_data, B_data, F : std_logic_vector(31 downto 0);

begin 

registerFile_part : RegisterFile port map (
                    Detination => Detination,
					A_select => A_address,
					B_select => B_address,
					DataIn => MUX_D,
					write => write,
					CLK => CLK,
					A => A_data,
					B => B_data
					);
					
					
Function_Unit_part : Function_Unit port map (
                     A => A_data,
					 B => MUX_B,
					 FS => FS,
					 V => V,
					 C => C,
					 N => N,
					 Z => Z,
					 F => F
					 );
					 
MUX_B_part : Mux2_32bit port map (
             A => MB_select,
             In0 => B_data,
			 In1 => Constant_in,
			 Z => MUX_B
			 );
			
MUX_D_part : Mux2_32bit port map (
             A => MD_select,
             In0 => F,
			 In1 => DataIn,
			 Z => MUX_D
			 );
			
A_data <= AddressOut;
MUX_B <= DataOut;
			
end Behavioral;