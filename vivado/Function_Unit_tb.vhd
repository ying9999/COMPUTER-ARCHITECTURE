library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Function_Unit_tb is 
end Function_Unit_tb;

architecture Behavioral of Function_Unit_tb is 
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

signal A, B : std_logic_vector (31 downto 0) := (others=>'0');
signal FS : std_logic_vector (4 downto 0) := (others=>'0');
signal V, C, N, Z : std_logic := '0';
signal F : std_logic_vector (31 downto 0);

begin 
        uut : Function_Unit port map (
		A => A, 
		B => B,
		FS => FS,
		V => V,
		C => C,
		N => N,
		Z => Z,
		F => F 
		);
		
stim : process
    begin
	--19336862
	A <= "00011001001100110110100001100010"; 
	--19336864
	B <= "00011001001100110110100001100100";
	--F=A+B+1
	FS <= "00011";
	wait for 2 ns;
	
	--F=A XOR B
	FS <= "01100";
	wait for 2 ns;
	
	--F=A+B 
	FS <= "00010";
	wait for 2 ns;
	
	--F=A and B 
	FS <= "01000";
	wait for 2 ns;
	
	--F=A
	FS <= "00000";
	wait for 2 ns;
	
	--F=B
	FS <= "10000";
	wait for 2 ns;
	
	--F=A+1
	FS <= "00001";
	wait for 2 ns;
	
	--F=1's cA
	FS <= "01110";
	wait for 2 ns;
	
	--F=A+1's cB +1
	FS <= "00101";
	wait for 2 ns;
	
	--F=srB 
	FS <= "10100";
	wait for 2 ns;
	
	--F=A+1's cB
	FS <= "00100";
	wait for 2 ns;
	
	--F=slB 
	FS <= "11000";
	wait for 2 ns;
	
	--F=A-1
	FS <= "00110";
	wait for 2 ns;
	
	--F=A 
	FS <= "00111";
	wait for 2 ns;
	
	--F=A OR B
	FS <= "01010";
	wait for 2 ns;


end process;
end Behavioral;