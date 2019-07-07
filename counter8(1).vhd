-----------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

use ieee.std_logic_unsigned.all;


entity counter8 is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           lid : in  STD_LOGIC;
           CBA : in  STD_LOGIC_VECTOR (2 downto 0);
           co : out  STD_LOGIC_VECTOR (2 downto 0));
end counter8;

architecture Behavioral of counter8 is
signal co1 : STD_LOGIC_VECTOR (2 downto 0);
begin
process(clk,rst,lid)
begin
if rst ='0' then
	co1<="000";
elsif clk'event and clk='1' then
	if lid ='0' then
		co1<=CBA;
	else
		co1<=co1 + 1;
	end if;
end if;

end process;
co<=co1;

end Behavioral;



