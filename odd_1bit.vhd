library IEEE;
use IEEE.std_logic_1164.all;

entity odd_1bit  is
	port (
		ODDi: in STD_LOGIC;
		I: in STD_LOGIC;
		ODD: out STD_LOGIC
		);
end odd_1bit;

architecture odd_1bit_df of odd_1bit is
	begin
		ODD <= (ODDi xor I);
end odd_1bit_df;
