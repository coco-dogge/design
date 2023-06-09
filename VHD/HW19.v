module lcd_demo3(btn,CLK,sw,
	lcd_on,lcd_data,lcd_rs,lcd_rw,lcd_en);
input  CLK;
input [3:0] btn;
input [3:0]sw;
output [7:0] lcd_data;
output lcd_on,lcd_rs,lcd_rw,lcd_en;

reg	[5+2:0]	lut_index;
reg	[8:0]	lut_data;
reg	[5:0]	mlcd_st;
reg	[17:0]	mdly;
reg			mlcd_start;
reg	[7:0]	mlcd_data;
reg			mlcd_rs;
wire		mlcd_done;
wire		rst;
//===========================
//reg [16*8:1]	string_rom;
reg [7:0]	string_data[15:0][1:0];
reg [1:0]	string_state;

//===========================

assign rst = btn[0];

localparam	
	lcd_intial	=	0,
	lcd_line1	=	5,
	lcd_ch_line	=	lcd_line1+16,
	lcd_line2	=	lcd_line1+16+1,
	lut_size	=	lcd_line1+32+1;

assign lcd_on=1'b1;
	
always@(posedge CLK or negedge rst)
begin
	if(!rst)
	begin
		lut_index	<=	0;
		mlcd_st		<=	0;
		mdly			<=	0;
		mlcd_start	<=	0;
		mlcd_data	<=	0;
		mlcd_rs		<=	0;
	end
	else
	begin
		if(lut_index<lut_size)
		begin
			case(mlcd_st)
			0:	begin
					mlcd_data	<=	lut_data[7:0];
					mlcd_rs		<=	lut_data[8];
					mlcd_start	<=	1;
					mlcd_st		<=	1;
				end
			1:	begin
					if(mlcd_done)
					begin
						mlcd_start	<=	0;
						mlcd_st		<=	2;					
					end
				end
			2:	begin
					if(mdly<18'h3fffe)
					mdly	<=	mdly+1;
					else
					begin
						mdly	<=	0;
						mlcd_st	<=	3;
					end
				end
			3:	begin
					lut_index	<=	lut_index+1;
					mlcd_st	<=	0;
				end
			endcase
		end
	end
end

always
begin
	case(lut_index)
	//	initial
	lcd_intial+0:	lut_data	<=	9'h038;
	lcd_intial+1:	lut_data	<=	9'h00c;
	lcd_intial+2:	lut_data	<=	9'h001;
	lcd_intial+3:	lut_data	<=	9'h006;
	lcd_intial+4:	lut_data	<=	9'h080;
	//	line 1
	lcd_line1+0:	lut_data	<=	{1'b1,string_data[0] [0]};	//	line1
	lcd_line1+1:	lut_data	<=	{1'b1,string_data[1] [0]};
	lcd_line1+2:	lut_data	<=	{1'b1,string_data[2] [0]};
	lcd_line1+3:	lut_data	<=	{1'b1,string_data[3] [0]};
	lcd_line1+4:	lut_data	<=	{1'b1,string_data[4] [0]};
	lcd_line1+5:	lut_data	<=	{1'b1,string_data[5] [0]};
	lcd_line1+6:	lut_data	<=	{1'b1,string_data[6] [0]};
	lcd_line1+7:	lut_data	<=	{1'b1,string_data[7] [0]};
	lcd_line1+8:	lut_data	<=	{1'b1,string_data[8] [0]};
	lcd_line1+9:	lut_data	<=	{1'b1,string_data[9] [0]};
	lcd_line1+10:	lut_data	<=	{1'b1,string_data[10][0]};
	lcd_line1+11:	lut_data	<=	{1'b1,string_data[11][0]};
	lcd_line1+12:	lut_data	<=	{1'b1,string_data[12][0]};
	lcd_line1+13:	lut_data	<=	{1'b1,string_data[13][0]};
	lcd_line1+14:	lut_data	<=	{1'b1,string_data[14][0]};
	lcd_line1+15:	lut_data	<=	{1'b1,string_data[15][0]};
	//	change line
	lcd_ch_line:	lut_data	<=	9'h0c0;
	//	line 2
	lcd_line2+0:	lut_data	<=	{1'b1,string_data[0] [1]};	//	line2
	lcd_line2+1:	lut_data	<=	{1'b1,string_data[1] [1]};	
	lcd_line2+2:	lut_data	<=	{1'b1,string_data[2] [1]};
	lcd_line2+3:	lut_data	<=	{1'b1,string_data[3] [1]};
	lcd_line2+4:	lut_data	<=	{1'b1,string_data[4] [1]};
	lcd_line2+5:	lut_data	<=	{1'b1,string_data[5] [1]};
	lcd_line2+6:	lut_data	<=	{1'b1,string_data[6] [1]};
	lcd_line2+7:	lut_data	<=	{1'b1,string_data[7] [1]};
	lcd_line2+8:	lut_data	<=	{1'b1,string_data[8] [1]};
	lcd_line2+9:	lut_data	<=	{1'b1,string_data[9] [1]};
	lcd_line2+10:	lut_data	<=	{1'b1,string_data[10][1]};
	lcd_line2+11:	lut_data	<=	{1'b1,string_data[11][1]};
	lcd_line2+12:	lut_data	<=	{1'b1,string_data[12][1]};
	lcd_line2+13:	lut_data	<=	{1'b1,string_data[13][1]};
	lcd_line2+14:	lut_data	<=	{1'b1,string_data[14][1]};
	lcd_line2+15:	lut_data	<=	{1'b1,string_data[15][1]};
	default:		lut_data	<=	9'h120;
	endcase
end
//===========================================
always @(posedge CLK)
begin
integer	i;
	case(sw[1:0])
		2'b00:	string_state<=2'b00;
		2'b01:	string_state<=2'b01;
		2'b10:	string_state<=2'b10;
		2'b11:	string_state<=2'b11;
	endcase
	
	if(rst)begin
		case(string_state)
			2'b00:begin
				//string_rom	<= " altera de2-70  ";
				string_data[0][sw[3]]	<=	" ";
				string_data[1][sw[3]]	<=	"W";
				string_data[2][sw[3]]	<=	"e";
				string_data[3][sw[3]]	<=	"l";//
				string_data[4][sw[3]]	<=	"c";
				string_data[5][sw[3]]	<=	"o";
				string_data[6][sw[3]]	<=	"m";
				string_data[7][sw[3]]	<=	"e";//
				string_data[8][sw[3]]	<=	" ";
				string_data[9][sw[3]]	<=	"t";
				string_data[10][sw[3]]	<=	"o";
				string_data[11][sw[3]]	<=	" ";//
				string_data[12][sw[3]]	<=	"t";
				string_data[13][sw[3]]	<=	"h";
				string_data[14][sw[3]]	<=	"e";
				string_data[15][sw[3]]	<=	" ";//
				//for(i=0;i<16;i=i+1)
				//	string_data[i][~sw[3]]	<=	8'h20;
			end
			2'b01:begin
				//string_rom	<= " altera de2-70  ";
				string_data[0][sw[3]]	<=	" ";
				string_data[1][sw[3]]	<=	"a";
				string_data[2][sw[3]]	<=	"l";
				string_data[3][sw[3]]	<=	"t";//
				string_data[4][sw[3]]	<=	"e";
				string_data[5][sw[3]]	<=	"r";
				string_data[6][sw[3]]	<=	"a";
				string_data[7][sw[3]]	<=	" ";//
				string_data[8][sw[3]]	<=	"d";
				string_data[9][sw[3]]	<=	"e";
				string_data[10][sw[3]]	<=	"1";
				string_data[11][sw[3]]	<=	"-";//
				string_data[12][sw[3]]	<=	"7";
				string_data[13][sw[3]]	<=	"0";
				string_data[14][sw[3]]	<=	" ";
				string_data[15][sw[3]]	<=	" ";//
				//for(i=0;i<16;i=i+1)
				//	string_data[i][~sw[3]]	<=	8'h20;
			end
			2'b10:begin
				//string_rom	<= " altera de2-70  ";
				string_data[0][sw[3]]	<=	" ";
				string_data[1][sw[3]]	<=	"N";
				string_data[2][sw[3]]	<=	"a";
				string_data[3][sw[3]]	<=	"t";//
				string_data[4][sw[3]]	<=	"i";
				string_data[5][sw[3]]	<=	"o";
				string_data[6][sw[3]]	<=	"n";
				string_data[7][sw[3]]	<=	"a";//
				string_data[8][sw[3]]	<=	"l";
				string_data[9][sw[3]]	<=	" ";
				string_data[10][sw[3]]	<=	"T";
				string_data[11][sw[3]]	<=	"a";//
				string_data[12][sw[3]]	<=	"i";
				string_data[13][sw[3]]	<=	"p";
				string_data[14][sw[3]]	<=	"e";
				string_data[15][sw[3]]	<=	"i";//
				//for(i=0;i<16;i=i+1)
				//	string_data[i][~sw[3]]	<=	8'h20;
			end
			2'b11:begin
				//string_rom	<= " altera de2-70  ";
				string_data[0][sw[3]]	<=	" ";
				string_data[1][sw[3]]	<=	"S";
				string_data[2][sw[3]]	<=	"T";
				string_data[3][sw[3]]	<=	" ";//
				string_data[4][sw[3]]	<=	"N";
				string_data[5][sw[3]]	<=	"O";
				string_data[6][sw[3]]	<=	":";
				string_data[7][sw[3]]	<=	"1";//
				string_data[8][sw[3]]	<=	"0";
				string_data[9][sw[3]]	<=	"9";
				string_data[10][sw[3]]	<=	"3";
				string_data[11][sw[3]]	<=	"6";//
				string_data[12][sw[3]]	<=	"0";
				string_data[13][sw[3]]	<=	"1";
				string_data[14][sw[3]]	<=	"0";
				string_data[15][sw[3]]	<=	"1";//
				//for(i=0;i<16;i=i+1)
				//	string_data[i][~sw[3]]	<=	8'h20;
			end
		endcase
	
	end
end
//===========================================
lcd_controller 		u0	(	//	host side
							.idata(mlcd_data),
							.irs(mlcd_rs),
							.istart(mlcd_start),
							.odone(mlcd_done),
							.iclk(CLK),
							.irst_n(rst),
							//	lcd interface
							.lcd_data(lcd_data),
							.lcd_rw(lcd_rw),
							.lcd_en(lcd_en),
							.lcd_rs(lcd_rs)	);


endmodule