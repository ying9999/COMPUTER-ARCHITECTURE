library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Shifter_Unit is
    port ( 
	       S0 : in std_logic;
           S1 : in std_logic;
		   B : in std_logic_vector (31 downto 0);
		   H : out std_logic_vector (31 downto 0)
		   );
		   
end Shifter_Unit;


architecture Behavioral of Shifter_Unit is
component mux_4to1 is 
    port(
         A,B,C,D : in STD_LOGIC;
         s0,s1: in STD_LOGIC;
         Z: out STD_LOGIC
  );
end component;

signal IL,IR : std_logic := '0';
signal zero : std_logic := '0';

begin 

shifter_0: mux_4to1 port map ( 
           A => B(0),
	       B => B(1),
		   C => IL,
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(0)
    );
	
shifter_1: mux_4to1 port map ( 
           A => B(1),
	       B => B(2),
		   C => B(0),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(1)
    );
	
shifter_2: mux_4to1 port map ( 
           A => B(2),
	       B => B(3),
		   C => B(1),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(2)
    );
	
shifter_3: mux_4to1 port map ( 
           A => B(3),
	       B => B(4),
		   C => B(2),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(3)
    );
	
shifter_4: mux_4to1 port map ( 
           A => B(4),
	       B => B(5),
		   C => B(3),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(4)
    );
	
shifter_5: mux_4to1 port map ( 
           A => B(5),
	       B => B(6),
		   C => B(4),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(5)
    );
	
shifter_6: mux_4to1 port map ( 
           A => B(6),
	       B => B(7),
		   C => B(5),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(6)
    );
	
shifter_7: mux_4to1 port map ( 
           A => B(7),
	       B => B(8),
		   C => B(6),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(7)
    );
	
shifter_8: mux_4to1 port map ( 
           A => B(8),
	       B => B(9),
		   C => B(7),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(8)
    );
	
shifter_9: mux_4to1 port map ( 
           A => B(9),
	       B => B(10),
		   C => B(8),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(9)
    );
	
shifter_10: mux_4to1 port map ( 
           A => B(10),
	       B => B(11),
		   C => B(9),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(10)
    );
	
shifter_11: mux_4to1 port map ( 
           A => B(11),
	       B => B(12),
		   C => B(10),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(11)
    );
	
shifter_12: mux_4to1 port map ( 
           A => B(12),
	       B => B(13),
		   C => B(11),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(12)
    );
	
shifter_13: mux_4to1 port map ( 
           A => B(13),
	       B => B(14),
		   C => B(12),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(13)
    );
	
shifter_14: mux_4to1 port map ( 
           A => B(14),
	       B => B(15),
		   C => B(13),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(14)
    );
	
shifter_15: mux_4to1 port map ( 
           A => B(15),
	       B => B(16),
		   C => B(14),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(15)
    );
	
shifter_16: mux_4to1 port map ( 
           A => B(16),
	       B => B(17),
		   C => B(15),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(16)
    );
	
shifter_17: mux_4to1 port map ( 
           A => B(17),
	       B => B(18),
		   C => B(16),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(17)
    );
	
shifter_18: mux_4to1 port map ( 
           A => B(18),
	       B => B(19),
		   C => B(17),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(18)
    );
	
shifter_19: mux_4to1 port map ( 
           A => B(19),
	       B => B(20),
		   C => B(18),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(19)
    );
	
shifter_20: mux_4to1 port map ( 
           A => B(20),
	       B => B(21),
		   C => B(19),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(20)
    );
	
shifter_21: mux_4to1 port map ( 
           A => B(21),
	       B => B(22),
		   C => B(20),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(21)
    );
	
shifter_22: mux_4to1 port map ( 
           A => B(22),
	       B => B(23),
		   C => B(21),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(22)
    );
	
shifter_23: mux_4to1 port map ( 
           A => B(23),
	       B => B(24),
		   C => B(22),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(23)
    );
	
shifter_24: mux_4to1 port map ( 
           A => B(24),
	       B => B(25),
		   C => B(23),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(24)
    );
	
shifter_25: mux_4to1 port map ( 
           A => B(25),
	       B => B(26),
		   C => B(24),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(25)
    );
	
shifter_26: mux_4to1 port map ( 
           A => B(26),
	       B => B(27),
		   C => B(25),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(26)
    );
	
shifter_27: mux_4to1 port map ( 
           A => B(27),
	       B => B(28),
		   C => B(26),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(27)
    );
	
shifter_28: mux_4to1 port map ( 
           A => B(28),
	       B => B(29),
		   C => B(27),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(28)
    );
	
shifter_29: mux_4to1 port map ( 
           A => B(29),
	       B => B(30),
		   C => B(28),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(29)
    );
	
shifter_30: mux_4to1 port map ( 
           A => B(30),
	       B => B(31),
		   C => B(29),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(30)
    );
	
shifter_31: mux_4to1 port map ( 
           A => B(31),
	       B => IR,
		   C => B(30),
		   D => zero,
		   S0 => S0,
		   S1 => S1,
		   Z  => H(31)
    );
	
end Behavioral;