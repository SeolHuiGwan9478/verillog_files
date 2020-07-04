module ASYNC_CNT(RSTN, CLK, Q_0, Q_1, Q_2, Q_3);
	input RSTN, CLK;
	output Q_0, Q_1, Q_2, Q_3;

	D_FLIP_FLOP D1(Q_0, CLK, RSTN);
	D_FLIP_FLOP D2(Q_1,Q_0,RSTN);
	D_FLIP_FLOP D3(Q_2,Q_1,RSTN);
	D_FLIP_FLOP D4(Q_3,Q_2,RSTN);

endmodule
		