`timescale 10ns/1ps

module MUX_SEG_TB;
	
reg [2:0]SEL;
wire [7:0]SEG_COM;
wire [6:0]SEG_DATA;

MUX_SEG U1(SEL, SEG_COM, SEG_DATA);

initial begin
			 SEL = 3'b000;
		#10 SEL = 3'b001;
		#10 SEL = 3'b010;
		#10 SEL = 3'b011;
		#10 SEL = 3'b100;
		#10 SEL = 3'b101;
		#10 SEL = 3'b110;
		#10 SEL = 3'b111;
end

endmodule
