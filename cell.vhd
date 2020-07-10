library IEEE;
use IEEE.std_logic_1164.all;

entity cell is
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
end cell;

architecture cell_struct of cell is
	component Unit
	port
		(
		E,A,B: IN STD_LOGIC;
		C: OUT  STD_LOGIC;
		T: IN STD_LOGIC_VECTOR(2 DOWNTO 0)
		);
	end component;
	component comparator_1bit
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

	component odd_1bit  is
	port (
		ODDi: in STD_LOGIC;
		I: in STD_LOGIC;
		ODD: out STD_LOGIC
		);
	end component;

	begin
		U0: Unit port map (E, A, B, C, S);
		U1: comparator_1bit port map (Xi, Yi, Zi, A, B, X, Y, Z);
		U2: odd_1bit port map (ODDAi, A, ODDA);
		U3: odd_1bit port map (ODDBi, B, ODDB);
		Eo <=E;
end cell_struct;