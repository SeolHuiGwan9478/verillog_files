`timescale 1ns/10ps
module ASYNC_CNT_TB;
	reg RSTN, CLK;
	wire Q_0,Q_1,Q_2,Q_3;
	
	ASYNC_CNT U1(RSTN, CLK, Q_0, Q_1, Q_2, Q_3);
	
	always
	begin
		#5 CLK = ~CLK;
	end
	
	initial
	begin
		CLK = 0;
		RSTN = 1;
		#4 RSTN = 0;
	end
endmodule	
	