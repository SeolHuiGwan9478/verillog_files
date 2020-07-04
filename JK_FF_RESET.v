module JK_FF_RESET(Q,J,K,CLK,RESET);

input J,K,CLK,RESET;
output Q;

reg Q;

always @(posedge CLK)
begin
	if(RESET == 1)
		Q = 0;
	else
	begin
		case({J,K})
		2'b00: Q = Q;
		2'b01: Q = 0;
		2'b10: Q = 1;
		2'b11: Q = ~Q;
		endcase
	end
end
endmodule
