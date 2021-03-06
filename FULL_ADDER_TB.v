`timescale 10ns/1ps

module FA_TestBench;

reg X,Y,Z;
wire S_TOT, C_TOT;

FULL_ADDER U1(X,Y,Z,S_TOT,C_TOT);

initial begin

			X=0;Y=0;Z=0;
	#10 	X=0;Y=0;Z=1;
	#10 	X=0;Y=1;Z=0;
	#10 	X=0;Y=1;Z=1;
	#10 	X=1;Y=0;Z=0;
	#10 	X=1;Y=0;Z=1;
	#10 	X=1;Y=1;Z=0;
	#10 	X=1;Y=1;Z=1;

end
endmodule
