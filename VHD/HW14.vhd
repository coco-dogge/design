library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity HW14 is
	port(
		CLK	:	in std_logic;
		rst	:	in std_logic;
		BCD	:	out std_logic_vector(7 downto 0);
		BCD1	:	out std_logic_vector(7 downto 0);
		BCD2	:	out std_logic_vector(7 downto 0);
		BCD3	:	out std_logic_vector(7 downto 0)
	);
end HW14;
architecture X of HW14 is

type btn_ram is array(0 to 3)of std_logic_vector(3 downto 0);
signal Q :btn_ram;

signal clkA:std_logic_vector(3 downto 0);

signal w :std_logic_vector(35 downto 0);

type seg_rom is array(0 to 15)of std_logic_vector(6 downto 0);
signal seg_num :seg_rom:=
(
	"1111110" ,"0110000" ,"1101101" ,"1111001" ,"0110011" ,"1011011" ,"0011111" ,"1110000" 
	,"1111111" ,"1110011" ,"1110111" ,"0011111" ,"1001110" ,"0111101" ,"1001111" ,"0000000"
);
begin
	


process(CLK)
begin
	if(rising_edge(CLK))then
		w <= w + '1';
		clkA <= w(23 downto 20);
	end if;
	
	
end process;


process (CLK)
variable j:integer range 0 to 3;
begin
if(rst = '0')then
		if(rising_edge(clkA(0)))then
			if(Q(0) = "0110")then
				Q(0) <= "0001";
			else
				Q(0) <= Q(0) + 1;
			end if;
		end if;
		if(rising_edge(clkA(1)))then
			if(Q(1) = "0110")then
				Q(1) <= "0001";
			else
				Q(1) <= Q(1) + 1;
			end if;
		end if;
		if(rising_edge(clkA(2)))then
			if(Q(2) = "0110")then
				Q(2) <= "0001";
			else
				Q(2) <= Q(2) + 1;
			end if;
		end if;
		if(rising_edge(clkA(3)))then
			if(Q(3) = "0110")then
				Q(3) <= "0001";
			else
				Q(3) <= Q(3) + 1;
			end if;
		end if;
				
	
end if;

BCD <= not(seg_num(conv_integer(Q(0))) & '0');
BCD1<= not(seg_num(conv_integer(Q(1))) & '0');
BCD2<= not(seg_num(conv_integer(Q(2))) & '0');
BCD3<= not(seg_num(conv_integer(Q(3))) & '0');
end process;
	
end X;