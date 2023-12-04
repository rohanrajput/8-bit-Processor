`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2023 13:48:28
// Design Name: 
// Module Name: signExtension
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


module signExtension(
input[2:0] immediate,
output[7:0] extendedOutput
    );
reg[7:0] base;
always@(immediate) begin
        base = immediate;
//        if(aluSrc==0)
//        begin
//             base = readData2;
//        end
//        else if(aluSrc==1)
//        begin
//             base = signExtension;
//        end
    end
        
assign extendedOutput = base;

endmodule
