module FOUR_FA(
	A0,A1,A2,A3,
	B0,B1,B2,B3,
	S0,S1,S2,S3,C4
);

input A0,A1,A2,A3,B0,B1,B2,B3;
output S0,S1,S2,S3,C4;

wire C_TMP1, C_TMP2, C_TMP3;

half_adder UNIT1(.A(A0), .B(B0), .S(S0), .C(C_TMP1));
FULL_ADDER UNIT2(.X(A1), .Y(B1), .Z(C_TMP1), .S_TOT(S1), .C_TOT(C_TMP2));
FULL_ADDER UNIT3(.X(A2), .Y(B2), .Z(C_TMP2), .S_TOT(S2), .C_TOT(C_TMP3));
FULL_ADDER UNIT4(.X(A3), .Y(B3), .Z(C_TMP3), .S_TOT(S3), .C_TOT(C4));

endmodule
