library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Logic_Circuit_32 is
  Port (A : in std_logic_vector (31 downto 0);
        B : in std_logic_vector (31 downto 0);
        S0 : in std_logic;
        S1 : in std_logic;
        Z : out std_logic_vector (31 downto 0));
end Logic_Circuit_32;

architecture Behavioral of Logic_Circuit_32 is

component logic_circuit is
  Port (   A : in STD_LOGIC;
           B : in STD_LOGIC;
           S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           Z : out STD_LOGIC );
end component;

begin
    logic_0: logic_circuit PORT MAP (
                                A => A(0),
                                B => B(0),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(0)); 

    logic_1: logic_circuit PORT MAP (
                                A => A(1),
                                B => B(1),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(1)); 
                                
    logic_2: logic_circuit PORT MAP (
                                A => A(2),
                                B => B(2),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(2)); 
                                
    logic_3: logic_circuit PORT MAP (
                                A => A(3),
                                B => B(3),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(3)); 
                                
    logic_4: logic_circuit PORT MAP (
                                A => A(4),
                                B => B(4),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(4)); 
                                
    logic_5: logic_circuit PORT MAP (
                                A => A(5),
                                B => B(5),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(5));

    logic_6: logic_circuit PORT MAP (
                                A => A(6),
                                B => B(6),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(6)); 
                                
    logic_7: logic_circuit PORT MAP (
                                A => A(7),
                                B => B(7),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(7));
                                
    logic_8: logic_circuit PORT MAP (
                                A => A(8),
                                B => B(8),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(8)); 
                                
    logic_9: logic_circuit PORT MAP (
                                A => A(9),
                                B => B(9),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(9)); 
                                
    logic_10: logic_circuit PORT MAP (
                                A => A(10),
                                B => B(10),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(10));
                                
    logic_11: logic_circuit PORT MAP (
                                A => A(11),
                                B => B(11),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(11)); 
                                
    logic_12: logic_circuit PORT MAP (
                                A => A(12),
                                B => B(12),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(12)); 

    logic_13: logic_circuit PORT MAP (
                                A => A(13),
                                B => B(13),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(13)); 

    logic_14: logic_circuit PORT MAP (
                                A => A(14),
                                B => B(14),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(14)); 
                                
    logic_15: logic_circuit PORT MAP (
                                A => A(15),
                                B => B(15),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(15)); 
								
	logic_16: logic_circuit PORT MAP (
                                A => A(16),
                                B => B(16),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(16)); 
                                
    logic_17: logic_circuit PORT MAP (
                                A => A(17),
                                B => B(17),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(17));
                                
    logic_18: logic_circuit PORT MAP (
                                A => A(18),
                                B => B(18),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(18)); 
                                
    logic_19: logic_circuit PORT MAP (
                                A => A(19),
                                B => B(19),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(19)); 
                                
    logic_20: logic_circuit PORT MAP (
                                A => A(20),
                                B => B(20),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(20));
                                
    logic_21: logic_circuit PORT MAP (
                                A => A(21),
                                B => B(21),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(21)); 
                                
    logic_22: logic_circuit PORT MAP (
                                A => A(22),
                                B => B(22),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(22)); 

    logic_23: logic_circuit PORT MAP (
                                A => A(23),
                                B => B(23),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(23)); 

    logic_24: logic_circuit PORT MAP (
                                A => A(24),
                                B => B(24),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(24)); 
                                
    logic_25: logic_circuit PORT MAP (
                                A => A(25),
                                B => B(25),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(25)); 
								
	logic_26: logic_circuit PORT MAP (
                                A => A(26),
                                B => B(26),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(26)); 
                                
    logic_27: logic_circuit PORT MAP (
                                A => A(27),
                                B => B(27),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(27));
                                
    logic_28: logic_circuit PORT MAP (
                                A => A(28),
                                B => B(28),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(28)); 
                                
    logic_29: logic_circuit PORT MAP (
                                A => A(29),
                                B => B(29),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(29)); 
                                
    logic_30: logic_circuit PORT MAP (
                                A => A(30),
                                B => B(30),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(30));
                                
    logic_31: logic_circuit PORT MAP (
                                A => A(31),
                                B => B(31),
                                S0 => S0,
                                S1 => S1,
                                Z => Z(31)); 
                               
								
end Behavioral;