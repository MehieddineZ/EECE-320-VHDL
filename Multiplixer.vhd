Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
ENTITY mux8to1 is
	port (  S :  IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		I0,I1,I2,I3,I4,I5,I6,I7,G : IN STD_LOGIC;
		F: OUT STD_LOGIC
				 );
	END mux8to1;
ARCHITECTURE mux8to1_arch OF mux8to1 IS
begin
	PROCESS(S,I0,I1,I2,I3,I4,I5,I6,I7)
	BEGIN
	CASE S IS
	    WHEN "000" =>F<=I0 ;
	    WHEN "001" =>F<=I1 ;
	    WHEN "010" =>F<=I2 ;
	    WHEN "011" =>F<=I3 ;
            WHEN "100" =>F<=I4 ;
	    WHEN "101" =>F<=I5 ;
	    WHEN "110" =>F<=I6 ;
            WHEN "111" =>F<=I7 ;
	    WHEN OTHERS =>F<='0';   ---- Output is unknown
	END CASE;
	  if G = '0'
	  then F <= 'U';
		end if;
	END PROCESS;
END mux8to1_arch;

		


	
	    


