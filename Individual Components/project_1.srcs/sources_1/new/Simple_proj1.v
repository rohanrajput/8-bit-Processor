`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.03.2023 20:54:05
// Design Name: 
// Module Name: Simple_proj1
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


module Simple_proj1(
input[7:0] input_1,
input[7:0] input_2,
input flag,
output[7:0] output_1
    );
    reg[7:0] base;
always@(flag) begin
        if(flag==1)
        begin
             base = input_1 + input_2;
        end
        else if(flag==0)
        begin
             base = input_1<<7;
        end
    end
        
assign output_1 = base;
endmodule
