library ieee;
use ieee.std_logic_1164.all;

entity or_2 is 
port	(A,B : in std_logic;
		 Q : out std_logic);
end entity;

--architecture structural of halfadder is
----declarative part of architecture
--component design
--port (a,b : in std_logic;
--		c,s : out std_logic);
--end component;


architecture dataflow of or_2 is 
begin
	Q <= A or B;
end architecture;