library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterFile is
    Port ( Detination : in STD_LOGIC_VECTOR (4 downto 0);
           Source : in STD_LOGIC_VECTOR (4 downto 0);
           DataIn : in STD_LOGIC_VECTOR (31 downto 0);
           SelectDataMux : in STD_LOGIC;
           CLK : in STD_LOGIC 
          );
end RegisterFile;

architecture Behavioral of RegisterFile is

component decoder_5to32
Port ( 
A : in std_logic_vector(4 downto 0);
Q0 : out std_logic;
Q1 : out std_logic;
Q2 : out std_logic;
Q3 : out std_logic;
Q4 : out std_logic;
Q5 : out std_logic;
Q6 : out std_logic;
Q7 : out std_logic;
Q8 : out std_logic;
Q9 : out std_logic;
Q10 : out std_logic;
Q11 : out std_logic;
Q12 : out std_logic;
Q13 : out std_logic;
Q14 : out std_logic;
Q15 : out std_logic;
Q16 : out std_logic;
Q17 : out std_logic;
Q18 : out std_logic;
Q19 : out std_logic;
Q20 : out std_logic;
Q21 : out std_logic;
Q22 : out std_logic;
Q23 : out std_logic;
Q24 : out std_logic;
Q25 : out std_logic;
Q26 : out std_logic;
Q27 : out std_logic;
Q28 : out std_logic;
Q29 : out std_logic;
Q30 : out std_logic;
Q31 : out std_logic);

end component;

component Mux2_32bit
    Port ( A : in STD_LOGIC;
           In0 : in STD_LOGIC_VECTOR (31 downto 0);
           In1 : in STD_LOGIC_VECTOR (31 downto 0);
           Z : out STD_LOGIC_VECTOR (31 downto 0));
end component;

component Mux32_32bit
    Port ( A : in STD_LOGIC_VECTOR (4 downto 0);
           In0 : in STD_LOGIC_VECTOR (31 downto 0);
           In1 : in STD_LOGIC_VECTOR (31 downto 0);
           In2 : in STD_LOGIC_VECTOR (31 downto 0);
           In3 : in STD_LOGIC_VECTOR (31 downto 0);
           In4 : in STD_LOGIC_VECTOR (31 downto 0);
           In5 : in STD_LOGIC_VECTOR (31 downto 0);
           In6 : in STD_LOGIC_VECTOR (31 downto 0);
           In7 : in STD_LOGIC_VECTOR (31 downto 0);
           In8 : in STD_LOGIC_VECTOR (31 downto 0);
           In9 : in STD_LOGIC_VECTOR (31 downto 0);
           In10 : in STD_LOGIC_VECTOR (31 downto 0);
           In11 : in STD_LOGIC_VECTOR (31 downto 0);
           In12 : in STD_LOGIC_VECTOR (31 downto 0);
           In13 : in STD_LOGIC_VECTOR (31 downto 0);
           In14 : in STD_LOGIC_VECTOR (31 downto 0);
           In15 : in STD_LOGIC_VECTOR (31 downto 0);
           In16 : in STD_LOGIC_VECTOR (31 downto 0);
           In17 : in STD_LOGIC_VECTOR (31 downto 0);
           In18 : in STD_LOGIC_VECTOR (31 downto 0);
           In19 : in STD_LOGIC_VECTOR (31 downto 0);
           In20 : in STD_LOGIC_VECTOR (31 downto 0);
           In21 : in STD_LOGIC_VECTOR (31 downto 0);
           In22 : in STD_LOGIC_VECTOR (31 downto 0);
           In23 : in STD_LOGIC_VECTOR (31 downto 0);
           In24 : in STD_LOGIC_VECTOR (31 downto 0);
           In25 : in STD_LOGIC_VECTOR (31 downto 0);
           In26 : in STD_LOGIC_VECTOR (31 downto 0);
           In27 : in STD_LOGIC_VECTOR (31 downto 0);
           In28 : in STD_LOGIC_VECTOR (31 downto 0);
           In29 : in STD_LOGIC_VECTOR (31 downto 0);
           In30 : in STD_LOGIC_VECTOR (31 downto 0);
           In31 : in STD_LOGIC_VECTOR (31 downto 0);    
           Z : out STD_LOGIC_VECTOR (31 downto 0));
end component;

component Register32
Port ( D : in STD_LOGIC_VECTOR (31 downto 0);
           Load : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (31 downto 0));
end component;

signal Load0 : std_logic;
signal Load1 : std_logic;
signal Load2 : std_logic;
signal Load3 : std_logic;
signal Load4 : std_logic;
signal Load5 : std_logic;
signal Load6 : std_logic;
signal Load7 : std_logic;
signal Load8 : std_logic;
signal Load9 : std_logic;
signal Load10 : std_logic;
signal Load11 : std_logic;
signal Load12 : std_logic;
signal Load13 : std_logic;
signal Load14 : std_logic;
signal Load15 : std_logic;
signal Load16 : std_logic;
signal Load17 : std_logic;
signal Load18 : std_logic;
signal Load19 : std_logic;
signal Load20 : std_logic;
signal Load21 : std_logic;
signal Load22 : std_logic;
signal Load23 : std_logic;
signal Load24 : std_logic;
signal Load25 : std_logic;
signal Load26 : std_logic;
signal Load27 : std_logic;
signal Load28 : std_logic;
signal Load29 : std_logic;
signal Load30 : std_logic;
signal Load31 : std_logic;


signal Reg0toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg1toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg2toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg3toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg4toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg5toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg6toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg7toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg8toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg9toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg10toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg11toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg12toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg13toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg14toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg15toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg16toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg17toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg18toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg19toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg20toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg21toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg22toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg23toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg24toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg25toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg26toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg27toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg28toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg29toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg30toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);
signal Reg31toMux32_32bit : STD_LOGIC_VECTOR (31 downto 0);

signal Mux32_32bittoMux2_32bit : STD_LOGIC_VECTOR (31 downto 0);

signal Mux2_32bittoRegister : STD_LOGIC_VECTOR (31 downto 0);

begin

Mux2 : Mux2_32bit PORT MAP (
           A => SelectDataMux,
           In0 => DataIn, 
           In1 => Mux32_32bittoMux2_32bit, 
           Z => Mux2_32bittoRegister  
        );

Decoder : decoder_5to32
port map (
    A  => Detination,
    Q0 => Load0,
    Q1 => Load1,
    Q2 => Load2,
    Q3 => Load3,
    Q4 => Load4,
    Q5 => Load5,
    Q6 => Load6,
    Q7 => Load7,
    Q8 => Load8,
    Q9 => Load9,
    Q10 => Load10,
    Q11 => Load11,
    Q12 => Load12,
    Q13 => Load13,
    Q14 => Load14,
    Q15 => Load15,
    Q16 => Load16,
    Q17 => Load17,
    Q18 => Load18,
    Q19 => Load19,
    Q20 => Load20,
    Q21 => Load21,
    Q22 => Load22,
    Q23 => Load23,
    Q24 => Load24,
    Q25 => Load25,
    Q26 => Load26,
    Q27 => Load27,
    Q28 => Load28,
    Q29 => Load29,
    Q30 => Load30,
    Q31 => Load31

);

Mux8 : Mux32_32bit PORT MAP (
           A => Source,
           In0 => Reg0toMux32_32bit, 
           In1 => Reg1toMux32_32bit, 
           In2 => Reg2toMux32_32bit, 
           In3 => Reg3toMux32_32bit, 
           In4 => Reg4toMux32_32bit, 
           In5 => Reg5toMux32_32bit, 
           In6 => Reg6toMux32_32bit, 
           In7 => Reg7toMux32_32bit, 
           In8 => Reg8toMux32_32bit, 
           In9 => Reg9toMux32_32bit, 
           In10 => Reg10toMux32_32bit, 
           In11 => Reg11toMux32_32bit, 
           In12 => Reg12toMux32_32bit, 
           In13 => Reg13toMux32_32bit, 
           In14 => Reg14toMux32_32bit, 
           In15 => Reg15toMux32_32bit, 
           In16 => Reg16toMux32_32bit, 
           In17 => Reg17toMux32_32bit, 
           In18 => Reg18toMux32_32bit, 
           In19 => Reg19toMux32_32bit, 
           In20 => Reg20toMux32_32bit, 
           In21 => Reg21toMux32_32bit, 
           In22 => Reg22toMux32_32bit, 
           In23 => Reg23toMux32_32bit, 
           In24 => Reg24toMux32_32bit, 
           In25 => Reg25toMux32_32bit,
           In26 => Reg26toMux32_32bit, 
           In27 => Reg27toMux32_32bit, 
           In28 => Reg28toMux32_32bit, 
           In29 => Reg29toMux32_32bit, 
           In30 => Reg30toMux32_32bit, 
           In31 => Reg31toMux32_32bit, 
           Z => Mux32_32bittoMux2_32bit   
        );
        

Register0 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load0,
    CLK => CLK,
    Q => Reg0toMux32_32bit
);

Register1 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load1,
    CLK => CLK,
    Q => Reg1toMux32_32bit
);

Register2 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load2,
    CLK => CLK,
    Q => Reg2toMux32_32bit
);

Register3 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load3,
    CLK => CLK,
    Q => Reg3toMux32_32bit
);

Register4 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load4,
    CLK => CLK,
    Q => Reg4toMux32_32bit
);

Register5 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load5,
    CLK => CLK,
    Q => Reg5toMux32_32bit
);

Register6 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load6,
    CLK => CLK,
    Q => Reg6toMux32_32bit
);

Register7 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load7,
    CLK => CLK,
    Q => Reg7toMux32_32bit
);

Register8 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load8,
    CLK => CLK,
    Q => Reg8toMux32_32bit
);

Register9 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load9,
    CLK => CLK,
    Q => Reg9toMux32_32bit
);

Register10 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load10,
    CLK => CLK,
    Q => Reg10toMux32_32bit
);

Register11 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load11,
    CLK => CLK,
    Q => Reg11toMux32_32bit
);

Register12 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load12,
    CLK => CLK,
    Q => Reg12toMux32_32bit
);

Register13 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load13,
    CLK => CLK,
    Q => Reg13toMux32_32bit
);

Register14 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load14,
    CLK => CLK,
    Q => Reg14toMux32_32bit
);

Register15 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load15,
    CLK => CLK,
    Q => Reg15toMux32_32bit
);

Register16 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load16,
    CLK => CLK,
    Q => Reg16toMux32_32bit
);

Register17 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load17,
    CLK => CLK,
    Q => Reg17toMux32_32bit
);

Register18 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load18,
    CLK => CLK,
    Q => Reg18toMux32_32bit
);

Register19 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load19,
    CLK => CLK,
    Q => Reg19toMux32_32bit
);

Register20 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load20,
    CLK => CLK,
    Q => Reg20toMux32_32bit
);

Register21 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load21,
    CLK => CLK,
    Q => Reg21toMux32_32bit
);

Register22 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load22,
    CLK => CLK,
    Q => Reg22toMux32_32bit
);

Register23 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load23,
    CLK => CLK,
    Q => Reg23toMux32_32bit
);

Register24 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load24,
    CLK => CLK,
    Q => Reg24toMux32_32bit
);

Register25 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load25,
    CLK => CLK,
    Q => Reg25toMux32_32bit
);

Register26 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load26,
    CLK => CLK,
    Q => Reg26toMux32_32bit
);

Register27 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load27,
    CLK => CLK,
    Q => Reg27toMux32_32bit
);

Register28 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load28,
    CLK => CLK,
    Q => Reg28toMux32_32bit
);

Register29 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load29,
    CLK => CLK,
    Q => Reg29toMux32_32bit
);

Register30 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load30,
    CLK => CLK,
    Q => Reg30toMux32_32bit
);

Register31 : Register32
port map (
    D => Mux2_32bittoRegister,
    Load => Load31,
    CLK => CLK,
    Q => Reg31toMux32_32bit
);

end Behavioral;

