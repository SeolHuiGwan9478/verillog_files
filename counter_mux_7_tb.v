`timescale 1ns/10ps
module counter_mux_7_tb;
  
  reg COUNT, CLK, RSTN;
  wire [7:0]SEG_COM;
  wire [6:0]SEG_DATA;
  
  counter_mux_7 u1(RSTN,CLK,COUNT,SEG_COM, SEG_DATA);
  
  always
  begin
    #5 CLK = ~CLK;
  end

  initial
  begin
    RSTN = 1;
    COUNT = 1;
    CLK = 0;
    #10 RSTN = 0;
    #150 COUNT = 0;
    #80 COUNT = 1;
  end
  endmodule
