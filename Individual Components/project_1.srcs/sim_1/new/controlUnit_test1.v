`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2023 15:59:40
// Design Name: 
// Module Name: controlUnit_test1
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


module controlUnit_test1;
reg[2:0] in1;
wire memRead, memToReg, aluOp, memWrite, aluSrc, regWrite;
controlUnit uut(memRead, memToReg, aluOp, memWrite, aluSrc, regWrite, in1);

initial
begin
in1 = 0;
#5 
in1 = 4;
#5 
in1 = 5;
#5 
in1 = 6;
#5 
in1 = 7;
#5 $finish;

end
endmodule
