library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           S2 : in STD_LOGIC;
           Cin : in STD_LOGIC;
           V : out STD_LOGIC;
           Cout : out STD_LOGIC;
           G : out STD_LOGIC_VECTOR (31 downto 0));
end ALU;

architecture Behavioral of ALU is
COMPONENT  Ripple_Carry_Adder_Subtractor  
    Port ( A : in STD_LOGIC_VECTOR (31 downto 0);
           B : in STD_LOGIC_VECTOR (31 downto 0);
           Cin : in STD_LOGIC;
           S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           Cout : out STD_LOGIC;
           V: out std_logic;
           G : out STD_LOGIC_VECTOR (31 downto 0));
END COMPONENT;

COMPONENT Logic_Circuit_32
    Port ( A : in std_logic_vector (31 downto 0);
           B : in std_logic_vector (31 downto 0);
           S0 : in std_logic;
           S1 : in std_logic;
           Z : out std_logic_vector (31 downto 0));
END COMPONENT;

COMPONENT  Mux2_32bit
    Port ( A : in STD_LOGIC;
           In0 : in STD_LOGIC_VECTOR (31 downto 0);
           In1 : in STD_LOGIC_VECTOR (31 downto 0);
           Z : out STD_LOGIC_VECTOR (31 downto 0));
END COMPONENT;

signal logic, ripple: std_logic_vector (31 downto 0) := (others=>'0');

begin
    logic_cir: logic_circuit_32 PORT MAP(
        A =>A,
        B =>B,
        S0 => S0,
        S1 => S1,
        Z => logic
        );
    adder_subtractor: Ripple_Carry_Adder_Subtractor PORT MAP(
       A => A,
       B => B,
       Cin => Cin,
       S0 => S0,
       S1 => S1,
       Cout =>Cout,
       V => V,
       G => ripple
       );
       
   mux: Mux2_32bit PORT MAP(
         A => S2,
         In0 => ripple,
         In1 => logic,
         Z => G
         );
        

end Behavioral;