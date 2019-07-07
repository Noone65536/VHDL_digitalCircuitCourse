
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity decoder38 is
    Port ( a : in  STD_LOGIC_VECTOR (2 downto 0);
			 rst: in  STD_LOGIC;
			 f : out  STD_LOGIC_VECTOR (7 downto 0));
end decoder38;

architecture Behavioral of decoder38 is

begin
process(rst,a) ---,clk
begin
if rst='0' then
	case a is
		when "000" => f<= x"01";
		when "001" => f<= x"02";
		when "010" => f<= x"04";
		when "011" => f<= x"08";
		when "100" => f<= x"10";
		when "101" => f<= x"20";
		when "110" => f<= x"40";
		when others => f<= x"80";
	end case;
else 
	f<=x"00";
end if;
end process;

end Behavioral;

