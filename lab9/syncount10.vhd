library ieee;
use ieee.std_logic_1164.all;
entity syncount10 is
port(clock :in std_logic;
		Q: out std_logic_vector(3 downto 0));
end syncount10;
architecture count10 of syncount10 is
begin 
	process(clock)
	variable count: std_logic_vector(3 downto 0);
		begin
		if(clock = '1' and clock'event)then
			case count is
				when "0000"  => count := "0001";
				when "0001"  => count := "0010";
				when "0010"  => count := "0011";
				when "0011"  => count := "0100";
				when "0100"  => count := "0101";
				when "0101"  => count := "0110";
				when "0110"  => count := "0111";
				when "0111"  => count := "1000";
				when "1000"  => count := "1001";
				when "1001"  => count := "1010";
				when "1010"  => count := "0000";
				when others  => count := "0000";
		end case;
	end if;
		Q <= count;
	end process;
end count10;