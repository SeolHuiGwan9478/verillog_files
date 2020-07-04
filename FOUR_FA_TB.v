`timescale 10ns/1ps

module FFA_TestBench;

reg A0,A1,A2,A3,B0,B1,B2,B3;
wire S0,S1,S2,S3,C4;

FOUR_FA U1(A0,A1,A2,A3,B0,B1,B2,B3
,S0,S1,S2,S3,C4);

initial begin
		 A0 = 1;A1 = 1;A2 = 1;A3 = 1;B0 = 1;B1 = 0;B2 = 0;B3 = 1;
	#10 A0 = 1;A1 = 0;A2 = 1;A3 = 0;B0 = 0;B1 = 1;B2 = 0;B3 = 1;
	#10 A0 = 0;A1 = 0;A2 = 0;A3 = 1;B0 = 0;B1 = 0;B2 = 1;B3 = 1;
	#10 A0 = 1;A1 = 0;A2 = 0;A3 = 0;B0 = 0;B1 = 1;B2 = 1;B3 = 1;
end
endmodule
