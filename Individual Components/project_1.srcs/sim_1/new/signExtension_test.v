`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2023 13:53:03
// Design Name: 
// Module Name: signExtension_test
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


module signExtension_test;
reg[2:0] input1;
wire[7:0] output1;
signExtension uut(input1,output1);
initial
begin
input1=4;
#5 
input1=2;


#5 $finish;

end
endmodule
