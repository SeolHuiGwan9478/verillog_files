`timescale 10ns/1ps

module DEC_3TO8_TB;
	
reg [2:0]ARR_I;
wire [7:0]ARR_O;

DEC_3TO8 U1(ARR_I, ARR_O);

initial begin
			 ARR_I = 3'b000;
		#10 ARR_I = 3'b001;
		#10 ARR_I = 3'b010;
		#10 ARR_I = 3'b011;
		#10 ARR_I = 3'b100;
		#10 ARR_I = 3'b101;
		#10 ARR_I = 3'b110;
		#10 ARR_I = 3'b111;
end
endmodule
