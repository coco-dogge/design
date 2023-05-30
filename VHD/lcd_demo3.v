module lcd_demo3(btn,clk,sw,
	lcd_on,lcd_data,lcd_rs,lcd_rw,lcd_en);
input  clk;
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


assign rst = btn[0];

localparam	
	lcd_intial	=	0,
	lcd_line1	=	5,
	lcd_ch_line	=	lcd_line1+16,
	lcd_line2	=	lcd_line1+16+1,
	lut_size	=	lcd_line1+32+1;

assign lcd_on=1'b1;
	
always@(posedge clk or negedge rst)
begin
	if(!rst)
	begin
		lut_index	<=	0;
		mlcd_st		<=	0;
		mdly		<=	0;
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
	lcd_line1+0:	lut_data	<=	9'h120;	//	welcome to the
	lcd_line1+1:	lut_data	<=	9'h157;
	lcd_line1+2:	lut_data	<=	9'h165;
	lcd_line1+3:	lut_data	<=	9'h16c;
	lcd_line1+4:	lut_data	<=	9'h163;
	lcd_line1+5:	lut_data	<=	9'h16f;
	lcd_line1+6:	lut_data	<=	9'h16d;
	lcd_line1+7:	lut_data	<=	9'h165;
	lcd_line1+8:	lut_data	<=	9'h120;
	lcd_line1+9:	lut_data	<=	9'h174;
	lcd_line1+10:	lut_data	<=	9'h16f;
	lcd_line1+11:	lut_data	<=	9'h120;
	lcd_line1+12:	lut_data	<=	9'h174;
	lcd_line1+13:	lut_data	<=	9'h168;
	lcd_line1+14:	lut_data	<=	9'h165;
	lcd_line1+15:	lut_data	<=	9'h120;
	//	change line
	lcd_ch_line:	lut_data	<=	9'h0c0;
	//	line 2
	lcd_line2+0:	lut_data	<=	9'h120;	//	altera de2-70
	lcd_line2+1:	lut_data	<=	9'h141;	
	lcd_line2+2:	lut_data	<=	9'h16c;
	lcd_line2+3:	lut_data	<=	9'h174;
	lcd_line2+4:	lut_data	<=	9'h165;
	lcd_line2+5:	lut_data	<=	9'h172;
	lcd_line2+6:	lut_data	<=	9'h161;
	lcd_line2+7:	lut_data	<=	9'h120;
	lcd_line2+8:	lut_data	<=	9'h144;
	lcd_line2+9:	lut_data	<=	9'h145;
	lcd_line2+10:	lut_data	<=	9'h132;
	lcd_line2+11:	lut_data	<=	9'h1b0;
	lcd_line2+12:	lut_data	<=	9'h131;
	lcd_line2+13:	lut_data	<=	9'h131;
	lcd_line2+14:	lut_data	<=	9'h135;
	lcd_line2+15:	lut_data	<=	9'h120;
	default:		lut_data	<=	9'h120;
	endcase
end

lcd_controller 		u0	(	//	host side
							.idata(mlcd_data),
							.irs(mlcd_rs),
							.istart(mlcd_start),
							.odone(mlcd_done),
							.iclk(clk),
							.irst_n(rst),
							//	lcd interface
							.lcd_data(lcd_data),
							.lcd_rw(lcd_rw),
							.lcd_en(lcd_en),
							.lcd_rs(lcd_rs)	);


endmodule