
# Exp No 4:SIMULATION AND IMPLEMENTATION OF SEQUENTIAL LOGIC CIRCUITS #


**Date:**



**AIM:**
 To simulate and synthesis SR, JK, T, D - FLIPFLOP, COUNTER DESIGN using Xilinx ISE.

**APPARATUS REQUIRED:**

Xilinx 14.7
Spartan6 FPGA

**PROCEDURE:**
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


**LOGIC DIAGRAM:**

**SR FLIPFLOP**

**LOGIC DIAGEAM:**

![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/77fb7f38-5649-4778-a987-8468df9ea3c3)

**VERILOG CODE:**
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


**OUTPUT:**

![image](https://github.com/hsmukesh/VLSI-LAB-EXP-4/assets/159506763/a35f87d8-a53e-47d1-a9c3-a13fff8ffa08)



**JK FLIPFLOP**


**LOGIC DIAGEAM:**

![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/1510e030-4ddc-42b1-88ce-d00f6f0dc7e6)

**VERILOG CODE:**
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


**OUTPUT:**

![image](https://github.com/hsmukesh/VLSI-LAB-EXP-4/assets/159506763/1009290b-776c-4b31-8d5e-641d84a6c14d)


**T FLIPFLOP**

![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/7a020379-efb1-4104-85ee-439d660baa08)


**VERILOG CODE:**
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


**OUTPUT:**

![image](https://github.com/hsmukesh/VLSI-LAB-EXP-4/assets/159506763/9eb51472-7c80-4a22-b458-6b2ae66db52e)


**D FLIPFLOP**


**LOGIC DIAGEAM:**

![image](https://github.com/navaneethans/VLSI-LAB-EXP-4/assets/6987778/dda843c5-f0a0-4b51-93a2-eaa4b7fa8aa0)


**VERILOG CODE:**
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


**OUTPUT:**

![image](https://github.com/hsmukesh/VLSI-LAB-EXP-4/assets/159506763/c85a8eb5-b68f-4fbc-b99d-19a4812dd44c)


**MOD 10 COUNTER:**

**LOGIC DIAGRAM:**

![image](https://github.com/hsmukesh/VLSI-LAB-EXP-4/assets/159506763/b9c92aa7-ed27-41c8-8e8f-243af778757d)


**VERILOG CODE:**
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


![image](https://github.com/hsmukesh/VLSI-LAB-EXP-4/assets/159506763/1e210c2d-5a5c-405a-a2a4-ba69b65cfe60)


UP COUNTER:


LOGIC DIAGRAM:


![image](https://github.com/hsmukesh/VLSI-LAB-EXP-4/assets/159506763/87f49cc7-1904-4cf1-95d1-97af8dd869f9)

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

![image](https://github.com/hsmukesh/VLSI-LAB-EXP-4/assets/159506763/95b496bc-ec67-4208-b87f-cff62c472591)




DOWN COUNTER:


LOGIC DIAGRAM:  


![image](https://github.com/hsmukesh/VLSI-LAB-EXP-4/assets/159506763/42d9b0d8-45d1-4ccd-95ed-68874d713314)


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



![image](https://github.com/hsmukesh/VLSI-LAB-EXP-4/assets/159506763/f386d03e-1cb4-49d3-9194-8064a957b28c)



RIPPLE CARRY COUNTER:

LOGIC DIAGRAM:

![image](https://github.com/hsmukesh/VLSI-LAB-EXP-4/assets/159506763/37be46f0-fc80-40f0-b325-df4eb1a2670d)


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


![image](https://github.com/hsmukesh/VLSI-LAB-EXP-4/assets/159506763/dae2e8f4-a21e-416c-9138-8304752e5010)


RESULT:


Hence, the simulation and synthesis of SR, JK, T, D - FLIPFLOP, COUNTER DESIGN is verified using Xilinx ISE


