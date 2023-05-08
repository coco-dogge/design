library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity SEG is
	port(
		Q	:	in std_logic_vector(3 downto 0);
		BCD	:	out std_logic_vector(7 downto 0)
	);
end SEG;
architecture X of SEG is

type seg_rom is array(0 to 15)of std_logic_vector(6 downto 0);
signal seg_num :seg_rom:=
(
	"1111110" ,"0110000" ,"1101101" ,"1111001" ,"0110011" ,"1011011" ,"0011111" ,"1110000" 
	,"1111111" ,"1110011" ,"1110111" ,"0011111" ,"1001110" ,"0111101" ,"1001111" ,"0000000"
);
begin
	
	BCD<= not(seg_num(conv_integer(Q)) & '0');

	
end X;