	library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity HW15 is
	port(
		CLK	:	in std_logic;
		rst	:	in std_logic;
		BCD	:	out std_logic_vector(7 downto 0);
		BCD1	:	out std_logic_vector(7 downto 0);
		BCD2	:	out std_logic_vector(7 downto 0);
		BCD3	:	out std_logic_vector(7 downto 0)
	);
end HW15;
architecture X of HW15 is

type btn_ram is array(0 to 3)of std_logic_vector(3 downto 0);
signal Q :btn_ram:=("0000","0000","0000","0000");

signal clkA:std_logic;

signal w :std_logic_vector(35 downto 0);
signal bt,btr: std_logic;


signal j,x:integer range 0 to 20;
signal d:integer range 0 to 20;

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
		
		clkA <= w(20);
	end if;
end process;


process (CLK)

begin

if(rising_edge(CLKA))then
	
	if((rst = '0') and (btr = '0'))then
		bt <= '1';btr <= '1';x <= 0;d <= 1;j <= 0;
	elsif(rst = '1')then
		btr <= '0';
	end if;
	--============================
	
	if (bt = '1')then
		
			if(x = 20)then
				x <= 0;
				if(d = 16)then
					bt <= '0';
					d <= 1;
				else
					d <= d * 2;
				end if;
				
			else
				x <= x + 1;
			end if;
	
		----------------------
			if(j = d)then
				j <= 0;
				if(Q(0) = "0110")then
					Q(0) <= "0001";
				else
					Q(0) <= Q(0) + 1;
				end if;
			else
				j <= j + 1;
			end if;
			
	
		-----------------------
	end if;
			
			
end if;

	
	


BCD <= not(seg_num(conv_integer(Q(0))) & '0');
BCD1<= not(seg_num(conv_integer(Q(1))) & '0');
BCD2<= not(seg_num(conv_integer(Q(2))) & '0');
BCD3<= not(seg_num(conv_integer(Q(3))) & '0');
end process;
	
end X;