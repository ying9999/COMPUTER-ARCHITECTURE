library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_tb is
--  Port ( );
end ALU_tb;

architecture Behavioral of ALU_tb is
COMPONENT ALU 
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           S2 : in STD_LOGIC;
           Cin : in STD_LOGIC;
           V : out STD_LOGIC;
           Cout : out STD_LOGIC;
           G : out STD_LOGIC_VECTOR (31 downto 0));
END COMPONENT;


signal A,B,G :std_logic_vector (31 downto 0) := (others=>'0');
signal S0,S1,S2,Cin: std_logic := '0';
signal V,Cout :std_logic;

begin
    uut: ALU PORT MAP(
    A=>A,
    B=>B,
    S0=>S0,
    S1=>S1,
    S2=>S2,
    Cin=>Cin,
    V=>V,
    Cout=>Cout,
    G=>G
    );
    stim_proc: process
    
    begin
    A<="00011001001100110110100001100010";
    B<="00000000000000000000000000000001";
    
   
    wait for 2ns;
    S0<='0';
    S1<='0';
    S2<='0';
    Cin<='0';
  
    wait for 2ns;
    S0<='0';
    S1<='0';
    S2<='0';
    Cin<='1';
     
    wait for 2ns;
    S0<='0';
    S1<='0';
    S2<='1';
    Cin<='0';
     
    wait for 2ns;
    S0<='0';
    S1<='0';
    S2<='1';
    Cin<='1';
   
    wait for 2ns;
    S0<='0';
    S1<='1';
    S2<='0';
    Cin<='0';
   
    wait for 2ns;
    S0<='0';
    S1<='1';
    S2<='0';
    Cin<='1';
   
    wait for 2ns;
    S0<='0';
    S1<='1';
    S2<='1';
    Cin<='0';
 
    wait for 2ns;
    S0<='0';
    S1<='1';
    S2<='1';
    Cin<='1';
  
    wait for 2ns;
    S0<='1';
    S1<='0';
    S2<='0';
    Cin<='0';
 
    wait for 2ns;
    S0<='1';
    S1<='0';
    S2<='0';
    Cin<='1';

    wait for 2ns;
    S0<='1';
    S1<='0';
    S2<='1';
    Cin<='0';

    wait for 2ns;
    S0<='1';
    S1<='0';
    S2<='1';
    Cin<='1';
 
    wait for 2ns;
    S0<='1';
    S1<='1';
    S2<='0';
    Cin<='0';

    wait for 2ns;
    S0<='1';
    S1<='1';
    S2<='0';
    Cin<='1';

    wait for 2ns;
    S0<='1';
    S1<='1';
    S2<='1';
    Cin<='0';

    wait for 2ns;
    S0<='1';
    S1<='1';
    S2<='1';
    Cin<='1';
    
end process;

end Behavioral;