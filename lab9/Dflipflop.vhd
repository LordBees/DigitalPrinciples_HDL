--dff
library ieee;
use ieee.std_logic_1164.all;
entity Dflipflop is
port(	clock,D : in std_logic;
		Q : out std_logic);
end entity;

architecture ff of Dflipflop is
begin
process(clock)
	begin
	if(clock = '1' and clock'event)then
		Q<=D;
	end if;
end process;
end ff;