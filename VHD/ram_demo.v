module ram_demo(col,row,out_data);
  input [3:0] col;
  input [1:0] row;
  output [7:0] out_data;
  reg [7:0] ram [63:0];
  initial
  begin
    $readmemb("lcd_data.txt",ram,0,63);
  end
  assign out_data=ram[col];
endmodule
