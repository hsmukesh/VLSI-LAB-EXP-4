VLSI-LAB-EXP-4

Exp4:SIMULATION AND IMPLEMENTATION OF SEQUENTIAL LOGIC CIRCUITS
Date:




AIM: 
 To simulate and synthesis SR, JK, T, D - FLIPFLOP, COUNTER DESIGN using Xilinx ISE.

APPARATUS REQUIRED:

Xilinx 14.7
Spartan6 FPGA  


PROCEDURE:
STEP:1  Start  the Xilinx navigator, Select and Name the New project.
STEP:2  Select the device family, device, package and speed.       
STEP:3  Select new source in the New Project and select Verilog Module as the Source type.                       
STEP:4  Type the File Name and Click Next and then finish button. Type the code and save it.
STEP:5  Select the Behavioral Simulation in the Source Window and click the check syntax.                       
STEP:6  Click the simulation to simulate the program and  give the inputs and verify the outputs as per the truth table.               
STEP:7  Select the Implementation in the Sources Window and select the required file in the Processes Window.
STEP:8  Select Check Syntax from the Synthesize  XST Process. Double Click in the  FloorplanArea/IO/Logic-Post Synthesis process in the User Constraints process group. UCF(User constraint File) is obtained. 
STEP:9  In the Design Object List Window, enter the pin location for each pin in the Loc column Select save from the File menu.
STEP:10 Double click on the Implement Design and double click on the Generate Programming File to create a bitstream of the design.(.v) file is converted into .bit file here.
STEP:11  On the board, by giving required input, the LEDs starts to glow light, indicating the output.


LOGIC DIAGRAM:

SR FLIPFLOP

LOGIC DIAGRAM:


![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/77fb7f38-5649-4778-a987-8468df9ea3c3)


VERIOLOG CODE:
```
module srflipflop(clk,reset,s,r,q);
input clk,reset,s,r;
output reg q;
always@(posedge clk)
begin
if(reset)
q<=1'b0;
else begin
case({s,r})
2'b00:q<=q;
2'b01:q<=1'b0;
2'b10:q<=1'b1;
2'b11:q<=1'bx;
default:q=1'bx;
endcase
end
end
endmodule

```

OUTPUT:


![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/159506763/115e4cbe-6ba3-4242-88ee-2c2d1ce029d6)



JK FLIPFLOP

LOGIC DIAGRAM:

![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/1510e030-4ddc-42b1-88ce-d00f6f0dc7e6)


VERIOLOG CODE:
```
module jkflipflop(clk,reset,j,k,q);
input clk,reset,j,k;
output reg q;
always@(posedge clk)
begin
if(reset)
q<=1'b0;
else begin
case({j,k})
2'b00:q<=q;
2'b01:q<=1'b0;
2'b10:q<=1'b1;
2'b11:q<=~q;
default:q=1'bx;
endcase
end
end
endmodule

```


OUTPUT:

![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/159506763/7d29c911-7682-4bff-96c7-75f673b558c6)


T FLIPFLOP


LOGIC DIAGRAM:

![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/7a020379-efb1-4104-85ee-439d660baa08)

VERIOLOG CODE:
```
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


```


OUTPUT:

![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/159506763/9eca7c39-ca12-4018-8d39-33e937a00918)



D FLIPFLOP


LOGIC DIAGRAM:

![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/dda843c5-f0a0-4b51-93a2-eaa4b7fa8aa0)

VERIOLOG CODE:
```
module dflipflop(clk,d,reset,q);
input d,clk,reset;
output reg q;
always@(posedge clk)
begin
if(reset)
q<=1'b0;
else
q<=d;
end
endmodule

```


OUTPUT:

![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/159506763/cbc08069-3f9c-4431-9ebb-81a2228f368f)



MOD 10 COUNTER


LOGIC DIAGRAM:


![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/a1fc5f68-aafb-49a1-93d2-779529f525fa)

![WhatsApp Image 2024-05-07 at 17 44 53_9c9ebdd4](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/159506763/2ac75814-ee7d-469e-a21d-c297915fd200)


VERIOLOG CODE:
```
module mod10counter(clk,rst,count);
input clk,rst;
output[3:0]count;
reg[3:0]count;
always@(posedge clk)
begin
if(rst|count==4'b1001)
count<=4'b0;
else
count<=count+1;
end
endmodule

```


OUTPUT:


![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/159506763/98376ccf-2c9d-43fd-a15a-de364b78d77c)



UP COUNTER:

LOGIC DIAGRAM:


![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/159506763/0750eb73-2db5-4ffe-9ea3-380a4e9e50a5)


VERILOG CODE:
```
module upcounter(clk,rst,count);
input clk,rst;
output[3:0]count;
reg[3:0]count;
always@(posedge clk)
begin
if(rst)
count<=4'b0;
else
count<=count+1;
end
endmodule
```
OUTPUT:

![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/159506763/2721a4fe-c39b-42d3-b6c9-12802cc48012)


DOWN COUNTER:


LOGIC DIAGRAM:

![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/159506763/49772988-789a-4223-b451-7dd301042ddc)


VERILOG CODE:
```
module downcounter(clk,rst,count);
input clk,rst;
output[3:0]count;
reg[3:0]count;
always@(posedge clk)
begin
if(rst)
count<=4'b0;
else
count <=count-1;
end
endmodule
```

OUTPUT:


![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/159506763/06989c2a-d529-4a20-bbe4-7e6d2f53fc48)


  


RIPPLE CARRY COUNTER:


LOGIC DIAGRAM:


![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/159506763/3d60ed2f-3075-4e32-aad3-2a7e9f41cb6a)



VERILOG CODE:
```
module jkff(j,k,clock,reset,q,qb);
input j,k,clock,reset;
output reg q,qb;
always@(negedge clock)
begin
case({reset,j,k})
3'b100 :q=q;
3'b101 :q=0;
3'b110 :q=1;
3'b111 :q=~q;
default :q=0;
endcase
qb<=~q;
end
endmodule
module ripple_count(j,k,clock,reset,q,qb);
input j,k,clock,reset;
output wire [3:0]q,qb;
jkff JK1(j,k,clock,reset,q[0],qb[0]);
jkff JK2(j,k,q[0],reset,q[1],qb[1]);
jkff JK3(j,k,q[1],reset,q[2],qb[2]);
jkff JK4(j,k,q[2],reset,q[3],qb[3]);
endmodule
```

OUTPUT:


![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/159506763/f85c34cb-718d-4a5b-b78b-df6e02e38e8a)

  


RESULT:

Hence, the simulation and synthesis of SR, JK, T, D - FLIPFLOP, COUNTER DESIGN is verified using Xilinx ISE


