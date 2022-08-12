module adder_4bit(  
input [3 : 0] a,
input [3 : 0] b,
input cin,
output [3 : 0] sum,
output cout);
wire [2 : 0] wir;

fulladder f0 (a[0], b[0], cin, wir[0], sum[0]); 
fulladder f1 (a[1], b[1], wir[0], wir[1], sum[1]); 
fulladder f2 (a[2], b[2], wir[1], wir[2], sum[2]); 
fulladder f3 (a[3], b[3], wir[2], cout, sum[3]); 


endmodule