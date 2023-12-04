`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2023 20:57:31
// Design Name: 
// Module Name: test1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test1;

reg[7:0] in_1;
reg[7:0] in_2;
reg[1:0] in_3;
wire[7:0] out1;


Simple_proj1 uut(in_1, in_2,in_3,out1);

initial
begin
in_1 = 1;in_2 = 2;in_3 = 1;
#5 
in_1 = 1;in_2 = 2;in_3 = 0;


#5 $finish;

end
endmodule
