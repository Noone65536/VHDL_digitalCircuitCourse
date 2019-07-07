library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ls85 is
	port( a1, a2 : in std_logic_vector(1 downto 0);
		gi, li, ei: in std_logic;
		Great, less, equal : out std_logic);
end ls85;

Architecture behav of ls85 is 
begin
process(a1, a2, gi, si, ei)
begin
if (a1< a2) then 
	less<=’1’;
	great<=’0’;
	equal<=’0’;
elsif (a1>a2) then
	less<=’0’;
	great<=’1’;
	equal<=’0’;
else
	less<=li;
	great<=gi;
	equal<=ei;
end if;
end process;

end behav;
