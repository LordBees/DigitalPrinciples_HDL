library ieee;
use ieee.std_logic_1164.all;

entity halfadder is 
port	(A,B : in std_logic;
		 C,S : out std_logic);
end entity;

--architecture structural of halfadder is
----declarative part of architecture
--component design
--port (a,b : in std_logic;
--		c,s : out std_logic);
--end component;


architecture dataflow of halfadder is 
begin
	C <= A and B;
	S <= A xor B;
end architecture;