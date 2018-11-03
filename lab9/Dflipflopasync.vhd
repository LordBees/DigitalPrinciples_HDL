--dffasync
library ieee;
use ieee.std_logic_1164.all;

entity Dflipflopasync is
port(	clock,D,Set,Rst : in std_logic;
		Q : out std_logic);
end entity;

architecture ff of Dflipflopasync is
begin
process(clock,Set,Rst)
	begin
	if(clock = '1' and clock'event)then
		Q <= D;
	end if;
	
	if (Set = '1') then
		Q <= '1';
	end if;
	
	if (Rst = '1')then
		Q <= '0';
	end if;
	
end process;
end ff;