module carryselectadder_16bit(
input [15 : 0] a,
input [15 : 0] b,
output [15 : 0] sum,
output carry_out);

wire [2 : 0] wir;

adder_4bit f1 (a[3 : 0], b[3 : 0], 1'b0, sum[3 : 0], wir[0]); 
adder_cell ac1 (a[7 : 4], b[7 : 4], wir[0], sum[7 : 4], wir[1]);
adder_cell ac2 (a[11 : 8], b[11 : 8], wir[1], sum[11 : 8], wir[2]);
adder_cell ac3 (a[15 : 12], b[15 : 12], wir[2], sum[15 : 12], carry_out);

endmodule
