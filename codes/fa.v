module fulladder (
input a,  
input b,  
input cin,  
output reg cout,  
output reg sum);  
  
    always @ (a or b or cin) begin  
    {cout, sum} = a + b + cin;  
  end  
endmodule  
