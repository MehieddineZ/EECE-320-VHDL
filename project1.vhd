library IEEE;
use IEEE.std_logic_1164.all;

entity project1 is
	port (  
		E: in std_logic;
		A: in std_logic_vector (0 to 7);
		B: in std_logic_vector (0 to 7);
		S: in std_logic_vector (2 downto 0);
		Eo: out std_logic;
		C: out std_logic_vector (0 to 7);
		X: out std_logic;
		Y: out std_logic;
		Z: out std_logic;
		ODDA: out std_logic;
		ODDB: out std_logic
		);
end project1;

architecture project1_struct of project1 is
	component cell
		port (  
		E: in std_logic;
		Xi: in std_logic;
		Yi: in std_logic;
		Zi: in std_logic;
		ODDAi: in std_logic;
		ODDBi: in std_logic;
		A: in std_logic;
		B: in std_logic;
		S: in std_logic_vector (2 downto 0);
		Eo: out std_logic;
		C: out std_logic;
		X: out std_logic;
		Y: out std_logic;
		Z: out std_logic;
		ODDA: out std_logic;
		ODDB: out std_logic
		);
	end component;
	signal Xt, Yt, Zt, ODDAt, ODDBt: std_logic_vector (0 to 7);
	signal Eot: std_logic;
	begin
	Xt(0) <= '0';
	Yt(0) <='1';
	Zt(0) <= '0';
	ODDAt(0) <= '0';
	ODDBt(0) <= '0';
	U0: cell port map (E, Xt(0), Yt(0), Zt(0), ODDAt(0), ODDBt(0), A(0), B(0), S, Eot, C(0), Xt(1), Yt(1), Zt(1), ODDAt(1), ODDBt(1));
	U1: cell port map (E, Xt(1), Yt(1), Zt(1), ODDAt(1), ODDBt(1), A(1), B(1), S, Eot, C(1), Xt(2), Yt(2), Zt(2), ODDAt(2), ODDBt(2));
	U2: cell port map (E, Xt(2), Yt(2), Zt(2), ODDAt(2), ODDBt(2), A(2), B(2), S, Eot, C(2), Xt(3), Yt(3), Zt(3), ODDAt(3), ODDBt(3));
	U3: cell port map (E, Xt(3), Yt(3), Zt(3), ODDAt(3), ODDBt(3), A(3), B(3), S, Eot, C(3), Xt(4), Yt(4), Zt(4), ODDAt(4), ODDBt(4));
	U4: cell port map (E, Xt(4), Yt(4), Zt(4), ODDAt(4), ODDBt(4), A(4), B(4), S, Eot, C(4), Xt(5), Yt(5), Zt(5), ODDAt(5), ODDBt(5));
	U5: cell port map (E, Xt(5), Yt(5), Zt(5), ODDAt(5), ODDBt(5), A(5), B(5), S, Eot, C(5), Xt(6), Yt(1), Zt(6), ODDAt(6), ODDBt(6));
	U6: cell port map (E, Xt(6), Yt(6), Zt(6), ODDAt(6), ODDBt(6), A(6), B(6), S, Eot, C(6), Xt(7), Yt(1), Zt(7), ODDAt(7), ODDBt(7));
	U7: cell port map (E, Xt(7), Yt(7), Zt(7), ODDAt(7), ODDBt(7), A(7), B(7), S, Eo, C(7), X, Y, Z, ODDA, ODDB);

end project1_struct;