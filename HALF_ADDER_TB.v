`timescale 10ns/1ps

module HA_TestBench;

reg A,B;
wire S,C ;

HALF_ADDER U1(A,B,S,C);

initial begin

			A=0;B=0;
	#10 	A=0;B=1;
	#10 	A=1;B=0;
	#10 	A=1;B=1;

end

endmodule
