module DEC_3TO8(
	ARR_I, ARR_O
);

input [2:0]ARR_I;
output [7:0]ARR_O;

reg[7:0]ARR_O;

always @(ARR_I)
begin
	case(ARR_I)
		3'b000:ARR_O = 8'b00000001;
		3'b001:ARR_O = 8'b00000010;
		3'b010:ARR_O = 8'b00000100;
		3'b011:ARR_O = 8'b00001000;
		3'b100:ARR_O = 8'b00010000;
		3'b101:ARR_O = 8'b00100000;
		3'b110:ARR_O = 8'b01000000;
		3'b111:ARR_O = 8'b10000000;
		default:ARR_O = 8'b00000000;
	endcase
end

endmodule
