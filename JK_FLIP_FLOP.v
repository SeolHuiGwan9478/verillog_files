module JK_FLIP_FLOP(J,K,CLK,Q);

input J,K,CLK;
output Q;

reg BUFF;
wire Q;

always @(posedge CLK)

begin
	if({J,K} == 2'b00)
		BUFF = BUFF;
	else if ({J,K} == 2'b01)
		BUFF = 0;
	else if ({J,K} == 2'b10)
		BUFF = 1;
	else
		BUFF = ~BUFF;
end

assign Q = BUFF;

endmodule

