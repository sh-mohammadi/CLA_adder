module csa_testbench;
reg [15 : 0] a, b;
wire [15 : 0] sum;
wire carry_out;

carryselectadder_16bit csa(a, b, sum, carry_out);

initial
begin
a = 16'd256;
b = 16'd348;
#20;
a = 16'd56;
b = 16'd38;
#20;
a = 16'd6;
b = 16'd48;
#20;
a = 16'd469;
b = 16'd127;
#20;
a = 16'd56;
b = 16'd8;
#20;
end
endmodule
