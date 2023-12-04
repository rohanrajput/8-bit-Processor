`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2023 13:27:59
// Design Name: 
// Module Name: mux_test1
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


module mux_Test;
reg[7:0] in_1;
reg[7:0] in_2;
reg in_3;
wire[7:0] out1;

//mux_1 (.in_1(readData2), .in_2(signExtension),.in_3(aluSrc),.out1(aluInput2));
mux_1 uut(in_1, in_2, in_3, out1);

initial
begin
in_1 = 50;in_2 = 45;in_3 = 1;
#5 
in_1 = 50;in_2 = 45;in_3 = 0;


#5 $finish;

end
endmodule