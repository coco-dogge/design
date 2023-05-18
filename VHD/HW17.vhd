library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity HW17 is
	port(
		CLK	:	in std_logic;
		rst	:	in std_logic;
		BCD	:	buffer std_logic_vector(7 downto 0);
		BCD1	:	buffer std_logic_vector(7 downto 0);
		BCD2	:	buffer std_logic_vector(7 downto 0);
		BCD3	:	buffer std_logic_vector(7 downto 0);
		sw	:	in std_logic_vector(9 downto 0)
	);
end HW17;
architecture X of HW17 is

type btn_ram is array(0 to 3)of std_logic_vector(3 downto 0);
signal Q :btn_ram:=("0000","0000","0000","0000");

signal clkA:std_logic;--_vector(3 downto 0)

signal ram :std_logic_vector(3 downto 0);--
signal flag,flagx :std_logic;

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
		w <= w + 1;
		clkA <= w(20);-- downto 25
	end if;
	
end process;


process (CLK)
variable j:integer range 0 to 3;
begin

--if(rst = '0')then
	
	if(rising_edge(clkA))then
		if(sw /= "0000000000")then
			case sw is
				when "0000000001" => ram <= "0000";
				when "0000000010" => ram <= "0001";
				when "0000000100" => ram <= "0010";
				when "0000001000" => ram <= "0011";
				when "0000010000" => ram <= "0100";
				when "0000100000" => ram <= "0101";
				when "0001000000" => ram <= "0110";
				when "0010000000" => ram <= "0111";
				when "0100000000" => ram <= "1000";
				when "1000000000" => ram <= "1001";
				when others => ram <= "1111";
			end case;
			
			flag <= '1';flagx<='0';
		else
			flag <= '0';
		end if;
		
		if ((flag = '0') and (flagx = '0'))then
			Q(3) <= ram;
			Q(0 to 2) <= Q(1 to 3);
			flagx <= '1';
		end if;
		
	end if;
				
	
--end if;

end process;
BCD <= not(seg_num(conv_integer(Q(0))) & '0');
BCD1<= not(seg_num(conv_integer(Q(1))) & '0');
BCD2<= not(seg_num(conv_integer(Q(2))) & '0');
BCD3<= not(seg_num(conv_integer(Q(3))) & '0');
	
end X;