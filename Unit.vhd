LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY Unit is
port
	(
		E,A,B: IN STD_LOGIC;
		C: OUT  STD_LOGIC;
		T: IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
end Unit;
ARCHITECTURE Unit_arch of Unit is 
	component mux8to1 is
	port (  S :  IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		I0,I1,I2,I3,I4,I5,I6,I7,G : IN STD_LOGIC;
		F: OUT STD_LOGIC
				 );
	END COMPONENT;
signal I0,I1,I2,I3,I4,I5,I6,I7 : STD_LOGIC;
BEGIN
I0<=(A AND B);
I1<=(A OR B);
I2<=(A NAND B);
I3<=(A NOR B);
I4<=(A XOR B);
I5<=(A XNOR B);
I6<=(NOT A);
I7<=(NOT B);
U: mux8to1 PORT MAP(S=>T,I0=>I0,I1=>I1,I2=>I2,I3 =>I3,I4=>I4,I5=>I5,I6=>I6,I7=>I7,G=>E,F=>C);
end UNIT_arch;