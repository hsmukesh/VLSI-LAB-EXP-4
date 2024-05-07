module tflipflop(clk,reset,t,q);
input clk,reset,t;
output reg q;
always@(posedge clk)
begin
if(reset)
q<=1'b0;
else if(t)
q<=~q;
else
q<=q;
end
endmodule
