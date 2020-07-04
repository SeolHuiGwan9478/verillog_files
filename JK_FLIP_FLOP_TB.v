`timescale 1ns/100ps

module JK_FLIP_FLOP_TB;

reg J,K,CLK;
wire Q;

JK_FLIP_FLOP U1(J,K,CLK,Q);

initial
begin
		 J=0; K=0; CLK=0;
	#10 J=0; K=0; CLK=1;
	#10 J=1; K=0; CLK=0;
	#10 J=1; K=0; CLK=1;
	#10 J=0; K=1; CLK=0;
	#10 J=0; K=1; CLK=1;
	#10 J=1; K=1; CLK=0;
	#10 J=1; K=1; CLK=1;
   #10 J=0; K=0; CLK=0;
	#10 J=0; K=0; CLK=1;
	#10 J=1; K=0; CLK=0;
	#10 J=1; K=0; CLK=1;
	#10 J=0; K=1; CLK=0;
	#10 J=0; K=1; CLK=1;
	#10 J=1; K=1; CLK=0;
	#10 J=1; K=1; CLK=1;
	
end

endmodule

