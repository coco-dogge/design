library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity HW13 is
	port(
		CLK	:	in std_logic;
		rst	:	in std_logic;
		BCD	:	out std_logic_vector(7 downto 0)
	);
end HW13;
architecture X of HW13 is

signal Q :integer range 1 to 6;

signal clk3HZ:std_logic;

signal w :std_logic_vector(35 downto 0);

type seg_rom is array(0 to 15)of std_logic_vector(6 downto 0);
signal seg_num :seg_rom:=
(
	"0110000" ,"0110000" ,"1101101" ,"1111001" ,"0110011" ,"1011011" ,"1011111" ,"1011111"
	,"1111111" ,"1110011" ,"1110111" ,"0011111" ,"1001110" ,"0111101" ,"1001111" ,"0000000"
);
begin
	


process(CLK)
begin
	w <= w + '1';
	clk3HZ <= w(27); --w(x) x up speed down\x down speed up
end process;


process (CLK)
begin
if(rising_edge(clk3HZ))then
	if(rst = '0')then
		Q <= Q + 1;
	end if;
	BCD<= not(seg_num(Q) & '0');
end if;
end process;
	
end X;