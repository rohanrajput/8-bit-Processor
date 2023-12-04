`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2023 14:52:51
// Design Name: 
// Module Name: regFileTest
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


module regFileTest;
reg readRegister1, readRegister2,regWrite;
reg [7:0] writeData;
wire [7:0] readData1, readData2;

registerFile uut (readData1, readData2, readRegister1, readRegister2, writeData, regWrite);

initial
begin
readRegister1=0; readRegister2=1; writeData=80; regWrite=0;
#5 
readRegister1=0; readRegister2=1; writeData=80; regWrite=1;

#5 
readRegister1=1; readRegister2=1; writeData=80; regWrite=1;

#5
readRegister1=1; readRegister2=0; writeData=79; regWrite=1;

#5
readRegister1=0; readRegister2=1; writeData=100; regWrite=1;
#5
readRegister1=0; readRegister2=0; writeData=80; regWrite=1;

#5$finish;

end

endmodule
