`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2023 14:05:09
// Design Name: 
// Module Name: instMem_test
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


module instMem_test;
reg[7:0] p1;
//reg[7:0] instmem;
wire[7:0] inst;
instMem uut(inst,p1);

initial
begin
p1 = 3;
#5
p1 = 4;
#5 
p1 = 1;
#5 
p1 = 2;
#5 
p1 = 3;
#5 
p1 = 0;



#5 $finish;

end
endmodule
