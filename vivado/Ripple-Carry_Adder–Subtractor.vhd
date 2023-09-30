library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ripple_Carry_Adder_Subtractor is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           Cin : in STD_LOGIC;
           S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           Cout : out STD_LOGIC;
           V: out std_logic;
           G : out STD_LOGIC_VECTOR (31 downto 0));
end Ripple_Carry_Adder_Subtractor;

   
architecture Behavioral of Ripple_Carry_Adder_Subtractor is
 
COMPONENT B_input_logic Port ( 
       B : in STD_LOGIC_VECTOR (31 downto 0);
       S0 : in STD_LOGIC;
       S1 : in STD_LOGIC;
       Y : out STD_LOGIC_VECTOR (31 downto 0));
END COMPONENT;
COMPONENT Ripple_Adder Port(
        B,A: in std_logic_vector(31 downto 0);
        Cin: in std_logic;
        S: out std_logic_vector(31 downto 0);
        Cout: out std_logic;
        V: out std_logic
        );
END COMPONENT;

signal Y : std_logic_vector(31 downto 0) := (others =>'0');

begin

    B_input: 
    B_input_logic PORT MAP(
    B=>B,
    S0=>S0,
    S1=>S1,
    Y=>Y
    );
    
    Ripple_Carry_Adder: 
    Ripple_Adder PORT MAP(
    A=> A,
    B=> Y,
    Cin=> Cin,
    S=>G,
    Cout=>Cout,
    V=>V
    );
    
end Behavioral;