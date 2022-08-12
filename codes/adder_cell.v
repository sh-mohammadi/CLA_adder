module adder_cell(
input [3 : 0] a,
input [3 : 0] b,
input cin,
output [3 : 0] sum,
output cout);

wire [3 : 0] sum0, sum1;
wire pre_cout0, pre_cout1;

adder_4bit f0 (a, b, 1'b0, sum0, pre_cout0); 
adder_4bit f1 (a, b, 1'b1, sum1, pre_cout1); 


mux2_1 s0 (sum0[0], sum1[0], cin, sum[0]); 
mux2_1 s1 (sum0[1], sum1[1], cin, sum[1]); 
mux2_1 s2 (sum0[2], sum1[2], cin, sum[2]); 
mux2_1 s3 (sum0[3], sum1[3], cin, sum[3]); 
mux2_1 co (pre_cout0, pre_cout1, cin, cout); 


endmodule
