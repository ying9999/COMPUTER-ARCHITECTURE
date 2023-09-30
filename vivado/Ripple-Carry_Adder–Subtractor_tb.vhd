library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ripple_Carry_Adder_Subtractor_tb is
--  Port ( );
end Ripple_Carry_Adder_Subtractor_tb;

architecture Behavioral of Ripple_Carry_Adder_Subtractor_tb is
COMPONENT Ripple_Carry_Adder_Subtractor  
Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           Cin : in STD_LOGIC;
           S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           Cout : out STD_LOGIC;
           V : out std_logic;
           G : out STD_LOGIC_VECTOR (31 downto 0));
END COMPONENT;

signal A,B,G : std_logic_vector (31 downto 0) := (others=>'0');
signal S0,S1,Cin,Cout,V :std_logic := '0';
 
begin
uut: Ripple_Carry_Adder_Subtractor PORT MAP(
    A=>A,
    B=>B,
    Cin=>Cin,
    S0=>S0,
    S1=>S1,
    Cout=> Cout,
    G=>G,
    V=>V
    );
    stim_proc: process
    
    begin
    A<="00011001001100110110100001100010";
    B<="00000000000000000000000000000001";
   
    S0<='0';
    S1<='0';
    Cin<='0';
  
    wait for 2 ns;
    S0<='0';
    S1<='0';
    Cin<='1';
   
    wait for 2 ns;
    S0<='0';
    S1<='1';
    Cin<='0';
  
    wait for 2 ns;
    S0<='0';
    S1<='1';
    Cin<='1';
 
    wait for 2 ns;
    S0<='1';
    S1<='0';
    Cin<='0';
   
    wait for 2 ns;
    S0<='1';
    S1<='0';
    Cin<='1';
 
    wait for 2 ns;
    S0<='1';
    S1<='1';
    Cin<='0';
   
    wait for 2 ns;
    S0<='1';
    S1<='1';
    Cin<='1';
    wait for 2 ns;
    
    end process;

end Behavioral;