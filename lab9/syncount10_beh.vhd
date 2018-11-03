library ieee;
use ieee.std_logic_1164.all;
entity syncount10_beh is
port( clock : in std_logic;
Q :out integer range 0 to 9);
end syncount10_beh;

architecture count10_beh of syncount10_beh is
begin
	process(clock)
	variable count: integer range 0 to 9;
		begin
			if(clock = '1' and clock'event)then
				if count < 9 then
					count := count + 1;
				else
					count := 0;
			end if;
		end if;
		Q <= count;
		
	end process;
end count10_beh;