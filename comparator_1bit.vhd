
library IEEE;
use IEEE.std_logic_1164.all;

entity comparator_1bit  is
	port (		
		Xi: in STD_LOGIC;
		Yi: in STD_LOGIC;
		Zi: in STD_LOGIC;
		A: in STD_LOGIC;
		B: in std_logic;
		X: out STD_LOGIC;
		Y: out STD_LOGIC;
		Z: out STD_LOGIC
		);
end comparator_1bit;

architecture comparator_1bit_df of comparator_1bit is
	begin
		X <= (A and (not B)) or Xi;
		Y <= (A xnor B) and Yi;
		Z <= ((not A) and B) or Zi;
		
end comparator_1bit_df;