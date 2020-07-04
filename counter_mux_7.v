module counter_mux_7(RSTN,CLK,COUNT,SEG_COM, SEG_DATA);

input RSTN, CLK, COUNT;
output [7:0]SEG_COM;
output [6:0]SEG_DATA;

wire [2:0]SEL;
SYNC_CNT SC(COUNT, RSTN, CLK, SEL[0],SEL[1],SEL[2]);

reg [7:0]SEG_COM;
reg [6:0]SEG_DATA;
wire [6:0]DATA_A, DATA_B, DATA_C, DATA_D;
wire [6:0]DATA_E, DATA_F, DATA_G, DATA_H;
assign DATA_A = 7'b1111110;
assign DATA_B = 7'b0110000;
assign DATA_C = 7'b1101101;
assign DATA_D = 7'b1111001;
assign DATA_E = 7'b0110011;
assign DATA_F = 7'b1011011;
assign DATA_G = 7'b1011111;
assign DATA_H = 7'b1110000;

always @(SEL) //multiplexer
begin
	case(SEL)
		3'b000: SEG_COM = 8'b01111111;
		3'b001: SEG_COM = 8'b10111111;
		3'b010: SEG_COM = 8'b11011111;
		3'b011: SEG_COM = 8'b11101111;
		3'b100: SEG_COM = 8'b11110111;
		3'b101: SEG_COM = 8'b11111011;
		3'b110: SEG_COM = 8'b11111101;
		3'b111: SEG_COM = 8'b11111110;
	endcase
end

always @(SEL) //7-segment
begin
	case(SEL)
		3'b000: SEG_DATA = DATA_A;
		3'b001: SEG_DATA = DATA_B;
		3'b010: SEG_DATA = DATA_C;
		3'b011: SEG_DATA = DATA_D;
		3'b100: SEG_DATA = DATA_E;
		3'b101: SEG_DATA = DATA_F;
		3'b110: SEG_DATA = DATA_G;
		3'b111: SEG_DATA = DATA_H;
	endcase
end

endmodule
