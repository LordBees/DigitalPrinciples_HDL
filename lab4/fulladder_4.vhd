--4bitAdder
--nBitAdder
library ieee;
use ieee.std_logic_1164.all;

entity fulladder_4 is
--generic (n: integer := 2);
port(	A,B	: in  std_logic_vector(3 downto 0);
		C_in	: in  std_logic;
		C_out : out std_logic;
		SUM	: out std_logic_vector(3 downto 0));
end entity;


architecture dataflow_top of fulladder_4 is
--components here
component fulladder
port(a,b,Cin	: in  std_logic;
	  Cout,Sum	: out std_logic);
end component;


signal D : std_logic_vector (2 downto 0);
--signal S : std_logic_vector (1 downto 0);
begin

inst1:fulladder port map (A(0),B(0)		,C_in		,D(0)  ,SUM(0));--(Cin		,A(i),B(i),Sum(i));
inst2:fulladder port map (A(1),B(1)		,D(0)		,D(1)  ,SUM(1));--(A(i)		,B(i)	,Sum(i-1),Sum(i));
inst3:fulladder port map (A(2),B(2)		,D(1)		,D(2)  ,SUM(2));--(A(i)		,B(i)	,Sum(i-1),Sum(i));
inst4:fulladder port map (A(3),B(3)		,D(2)		,C_out ,SUM(3));--(A(i)		,B(i)	,Sum(i-1),Sum(i));


end dataflow_top;

--inst1:halfadder port map(a		,b		,S(0),D);
--inst2:halfadder port map(D		,Cin	,S(1),Sum);
--inst3:or_2 		 port map(S(0) ,S(1) ,Cout);
--Q <= D(n);