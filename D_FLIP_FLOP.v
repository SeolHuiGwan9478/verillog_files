module D_FLIP_FLOP(Q, D, RESET);
	output Q;
	input D, RESET;
	reg Q;
	
	always@(negedge D or posedge RESET)
	if(RESET) Q = 0;
	else Q = ~Q;

endmodule
