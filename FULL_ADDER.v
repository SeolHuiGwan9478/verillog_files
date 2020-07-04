module FULL_ADDER(
	X,Y,Z,S_TOT,C_TOT
);

input X,Y,Z;
output S_TOT, C_TOT;

wire C_TMP1, C_TMP2;
wire S_TMP;

half_adder UNIT1(.A(X), .B(Y), .S(S_TMP), .C(C_TMP1));
half_adder UNIT2(.A(S_TMP), .B(Z), .S(S_TOT), .C(C_TMP2));

assign C_TOT = (C_TMP1)|(C_TMP2);

endmodule
