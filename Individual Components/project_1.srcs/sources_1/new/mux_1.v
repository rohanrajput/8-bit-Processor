`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2023 12:45:54
// Design Name: 
// Module Name: mux_1
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


module mux_1(
input[7:0] readData2,
input[7:0] signExtension,
input aluSrc,
output[7:0] aluInput2   
);
reg[7:0] base;
always@(aluSrc) begin
        if(aluSrc==0)
        begin
             base = readData2;
        end
        else if(aluSrc==1)
        begin
             base = signExtension;
        end
    end
        
assign aluInput2 = base;
endmodule
