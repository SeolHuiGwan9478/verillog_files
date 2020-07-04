`timescale 10ns/1ps

module ENC_8TO3_TB;
	
reg [7:0]ARR_I;
wire [2:0]ARR_O;

ENC_8TO3 U1(ARR_I, ARR_O);

initial begin
			 ARR_I = 8'b00000001;
		#10 ARR_I = 8'b00000010;
		#10 ARR_I = 8'b00000100;
		#10 ARR_I = 8'b00001000;
		#10 ARR_I = 8'b00010000;
		#10 ARR_I = 8'b00100000;
		#10 ARR_I = 8'b01000000;
		#10 ARR_I = 8'b10000000;
end
endmodule
