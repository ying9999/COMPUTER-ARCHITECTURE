library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Function_Unit is 
    port ( 
	        A : in std_logic_vector(31 downto 0);
			B : in std_logic_vector(31 downto 0);
			FS : in std_logic_vector(4 downto 0);
			V : out std_logic;
			C : out std_logic;
			N : out std_logic;
			Z : out std_logic;
			F : out std_logic_vector(31 downto 0));
			
	end Function_Unit;
	
architecture Behavioral of Function_Unit is 
component ALU is
    Port ( 
	       A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           S2 : in STD_LOGIC;
           Cin : in STD_LOGIC;
           V : out STD_LOGIC;
           Cout : out STD_LOGIC;
           G : out STD_LOGIC_VECTOR (31 downto 0));
		   
end component;

component Shifter_Unit is 
    port ( 
	       S0 : in std_logic;
           S1 : in std_logic;
		   B : in std_logic_vector (31 downto 0);
		   H : out std_logic_vector (31 downto 0)
		   );
		   
end component;

component Mux2_32bit is 
    Port ( 
	       A : in STD_LOGIC;
           In0 : in STD_LOGIC_VECTOR (31 downto 0);
           In1 : in STD_LOGIC_VECTOR (31 downto 0);
           Z : out STD_LOGIC_VECTOR (31 downto 0));
		   
end component;

component zeroDetect is 
    port( 
	      input : in std_logic_vector(31 downto 0);
	      output : out std_logic);
	
	
	
	
end component;

signal G, H : std_logic_vector(31 downto 0);

begin 
    alu_part: ALU port map (
	          A => A,
	          B => B,
			  S0 => FS(0),
			  S1 => FS(1),
			  S2 => FS(2),
			  Cin => FS(3),
	          V => V, 
	          Cout => C,
			  G => G
			  );
			  
	zeroDetect_part: zeroDetect port map (
	          input => G,
			  output => Z
			  );
			  
    shifter_part: Shifter_Unit port map ( 
	          S0 => Fs(2),
			  S1 => Fs(3),
			  B => B,
			  H => H
			  );
			  
    mux_part: Mux2_32bit port map (
	          A => FS(4),
			  In0 => G,
			  In1 => H,
			  Z => F
			  );
			  
end Behavioral;