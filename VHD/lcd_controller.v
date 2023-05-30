module lcd_controller (	
	idata,irs,istart,odone,iclk,irst_n,
	lcd_data,lcd_rw,lcd_en,lcd_rs	);
//	host side
input	[7:0]	idata;
input	irs,istart;
input	iclk,irst_n;
output reg odone;
//	lcd interface
output [7:0] lcd_data;
output reg lcd_en;
output lcd_rw;
output lcd_rs;
//	internal register
reg [4:0]	cont;
reg	[1:0]	state;
reg	prestart,mstart;

/////////////////////////////////////////////
//	only write to lcd, bypass irs to lcd_rs
assign	lcd_data	=	idata; 
assign	lcd_rw		=	1'b0;
assign	lcd_rs		=	irs;
/////////////////////////////////////////////

always@(posedge iclk or negedge irst_n)
begin
	if(!irst_n)
	begin
		odone<=0;	lcd_en<=0;
		prestart<=0;	mstart<=0;
		cont<=0;	state<=0;
	end
	else
	begin
		//////	input start detect ///////
		prestart<=	istart;
		if({prestart,istart}==2'b01)
		begin
			mstart	<=	1'b1;
			odone	<=	1'b0;
		end
		//////////////////////////////////
		if(mstart)
		begin
			case(state)
			0:	state	<=	1;	//	wait setup
			1:	begin
					lcd_en	<=	1'b1;
					state		<=	2;
				end
			2:	begin					
					if(cont<25)
					cont	<=	cont+1;
					else
					state		<=	3;
				end
			3:	begin
					lcd_en	<=	1'b0;
					mstart	<=	1'b0;
					odone	<=	1'b1;
					cont	<=	0;
					state		<=	0;
				end
			endcase
		end
	end
end

endmodule