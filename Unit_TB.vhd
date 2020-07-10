LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Unit_TB is 
end Unit_TB;
architecture Unit_TB_ARCH of Unit_TB is
Component  Unit is
port 
(
	E,A,B: IN STD_LOGIC;
	C: OUT  STD_LOGIC;
	T: IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
end component;
signal E,A,B,C: STD_LOGIC;
signal T: STD_LOGIC_VECTOR(2 downto 0);
begin
UUT:Unit port map(E=>E,A=>A,B=>B,C=>C,T=>T);
process
begin
E<='1';
T<="000";
A<='0';
B<='0';
wait for 10ns;
A<='0';
B<='1';
wait for 10ns;
A<='1';
B<='0';
wait for 10ns;
A<='1';
B<='1';
wait for 10ns;
T<="001";
A<='0';
B<='0';
wait for 10ns;
A<='0';
B<='1';
wait for 10ns;
A<='1';
B<='0';
wait for 10ns;
A<='1';
B<='1';
wait for 10ns;
T<="011";
A<='0';
B<='0';
wait for 10ns;
A<='0';
B<='1';
wait for 10ns;
A<='1';
B<='0';
wait for 10ns;
A<='1';
B<='1';
wait for 10ns;
T<="100";
A<='0';
B<='0';
wait for 10ns;
A<='0';
B<='1';
wait for 10ns;
A<='1';
B<='0';
wait for 10ns;
A<='1';
B<='1';
wait for 10ns;

T<="101";
A<='0';
B<='0';
wait for 10ns;
A<='0';
B<='1';
wait for 10ns;
A<='1';
B<='0';
wait for 10ns;
A<='1';
B<='1';
wait for 10ns;

T<="110";
A<='0';
B<='0';
wait for 10ns;
A<='0';
B<='1';
wait for 10ns;
A<='1';
B<='0';
wait for 10ns;
A<='1';
B<='1';
wait for 10ns;

T<="111";
A<='0';
B<='0';
wait for 10ns;
A<='0';
B<='1';
wait for 10ns;
A<='1';
B<='0';
wait for 10ns;
A<='1';
B<='1';
wait for 10ns;



E<='0';
T<="000";
A<='0';
B<='0';
wait for 10ns;
A<='0';
B<='1';
wait for 10ns;
A<='1';
B<='0';
wait for 10ns;
A<='1';
B<='1';
wait for 10ns;
T<="001";
A<='0';
B<='0';
wait for 10ns;
A<='0';
B<='1';
wait for 10ns;
A<='1';
B<='0';
wait for 10ns;
A<='1';
B<='1';
wait for 10ns;
T<="011";
A<='0';
B<='0';
wait for 10ns;
A<='0';
B<='1';
wait for 10ns;
A<='1';
B<='0';
wait for 10ns;
A<='1';
B<='1';
wait for 10ns;
T<="100";
A<='0';
B<='0';
wait for 10ns;
A<='0';
B<='1';
wait for 10ns;
A<='1';
B<='0';
wait for 10ns;
A<='1';
B<='1';
wait for 10ns;

T<="101";
A<='0';
B<='0';
wait for 10ns;
A<='0';
B<='1';
wait for 10ns;
A<='1';
B<='0';
wait for 10ns;
A<='1';
B<='1';
wait for 10ns;

T<="110";
A<='0';
B<='0';
wait for 10ns;
A<='0';
B<='1';
wait for 10ns;
A<='1';
B<='0';
wait for 10ns;
A<='1';
B<='1';
wait for 10ns;

T<="111";
A<='0';
B<='0';
wait for 10ns;
A<='0';
B<='1';
wait for 10ns;
A<='1';
B<='0';
wait for 10ns;
A<='1';
B<='1';
wait for 10ns;


wait;
end process;

end Unit_TB_ARCH;





