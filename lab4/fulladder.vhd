library ieee;
use ieee.std_logic_1164.all;

entity fulladder is
port(a,b,Cin	: in  std_logic;
	  Cout,Sum	: out std_logic);
end entity;


architecture structural of fulladder is

--here
component halfadder
port	(A,B : in std_logic;
		 C,S : out std_logic);
end component;

component or_2
port	(A,B : in std_logic;
		 Q : out std_logic);
end component;


signal D : std_logic;
signal S : std_logic_vector (1 downto 0);

begin

inst1:halfadder port map(a		,b		,S(0),D);
inst2:halfadder port map(D		,Cin	,S(1),Sum);
inst3:or_2 		 port map(S(0) ,S(1) ,Cout);
end structural;