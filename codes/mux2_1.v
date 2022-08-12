module mux2_1(
input a, b, s,
output reg out);

always@(a or b or s)
begin
	case(s)
		1'b0 : out = a;
		1'b1 : out = b;
		default : out = 1'b0;
	endcase
end
endmodule