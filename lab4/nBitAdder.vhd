
--nBitAdder
library ieee;
use ieee.std_logic_1164.all;
entity nBitAdder is
generic (n: integer := 3);
port(	A,B			: in  std_logic_vector(n downto 0);
		C_in 			: in  std_logic;
		C_out			: out std_logic;
		SUM			: out std_logic_vector(n downto 0));
end entity;


architecture structural of nBitAdder is

--here

component fulladder
port(a,b,Cin	: in  std_logic;
	  Cout,Sum	: out std_logic);
end component;


signal D : std_logic_vector (n downto 0);--why defined?
--signal S : std_logic_vector (1 downto 0);
begin

fulladder_gen: for i in 0 to n generate
	firstblock: if i=0  generate
		inst1:fulladder port map(A(i),B(i),	C_in	,D(i),SUM(i));--(Cin		,A(i),B(i),Sum(i));
	end generate firstblock;
	
	--otherblocks: if i<n and i>0 generate
	--	inst2:fulladder port map (A(i),B(i),	D(i-1)	,D(i),SUM(i));--(A(i)		,B(i)	,Sum(i-1),Sum(i));
	--end generate otherblocks;
	
	--finalblock: if i=n generate
	--	inst3:fulladder port map (A(i),B(i),	D(i-1)	,C_out,SUM(i));--(A(i)		,B(i)	,Sum(i-1),Sum(i));
	--end generate finalblock;
	
	
	otherblocks: if i>0 generate
		inst2:fulladder port map (A(i),B(i),	D(i-1)	,D(i),SUM(i));--(A(i)		,B(i)	,Sum(i-1),Sum(i));
	end generate otherblocks;
	
end generate fulladder_gen;
C_out <= D(n);

end structural;

--inst1:halfadder port map(a		,b		,S(0),D);
--inst2:halfadder port map(D		,Cin	,S(1),Sum);
--inst3:or_2 		 port map(S(0) ,S(1) ,Cout);
--Q <= D(n);