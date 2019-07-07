
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity mux4to1 is
    Port ( d0 : in  STD_LOGIC;
           d1 : in  STD_LOGIC;
           d2 : in  STD_LOGIC;
           d3 : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (1 downto 0);
           y : out  STD_LOGIC);
end mux4to1;

architecture Behavioral of mux4to1 is

begin
y<= d0 when A="00" else
	 d1 when A="01" else
	 d2 when A="10" else
	 d3 ;

end Behavioral;

