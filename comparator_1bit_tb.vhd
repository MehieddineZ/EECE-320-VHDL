library IEEE;
use IEEE.std_logic_1164.all;

entity comparator_1bit_tb  is
end comparator_1bit_tb;

architecture tb of comparator_1bit_tb is
component comparator_1bit  is
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
end component;

	signal Xit, Yit, Zit, At, Bt, Xt, Yt, Zt: std_logic  := '1';
	begin
	U1: comparator_1bit port map (Xi => Xit,Yi=> Yit, Zi => Zit, A=> At,B=> Bt,X=> Xt, Y=> Yt,Z=> Zt);
	process
		begin
			Xit <= '0';
			Yit <= '0';
			Zit <= '0';
			At <= '1';
			Bt <= '0'; wait for 10ns;

			Xit <= '1';
			Yit <= '0';
			Zit <= '0';
			At <= '0';
			Bt <= '0'; wait for 10ns;

			Xit <= '0';
			Yit <= '1';
			Zit <= '0';
			At <= '0';
			Bt <= '0'; wait for 10ns;

			Xit <= '0';
			Yit <= '0';
			Zit <= '0';
			At <= '0';
			Bt <= '1'; wait for 10ns;
	end process;
end tb;