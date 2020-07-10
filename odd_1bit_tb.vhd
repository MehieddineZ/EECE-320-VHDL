library IEEE;
use IEEE.std_logic_1164.all;

entity odd_1bit_tb  is
end odd_1bit_tb;

architecture tb of odd_1bit_tb is
component odd_1bit  is
	port (
		ODDi: in STD_LOGIC;
		I: in STD_LOGIC;
		ODD: out STD_LOGIC
		);
end component;
	signal ODDit, It, ODDt: std_logic :='0';
	begin
	U1: odd_1bit port map (ODDi=>ODDit, I=>It, ODD=>ODDt);
	process
		begin

			ODDit <= '0';
			It <= '0'; wait for 10ns;
			
			ODDit <= '0';
			It <= '1'; wait for 10ns;
			
			ODDit <= '1';
			It <= '0'; wait for 10ns;
	
			ODDit <= '1';
			It <= '1'; wait for 10ns;
	end process;
end tb;

