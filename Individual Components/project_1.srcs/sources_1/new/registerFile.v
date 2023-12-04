module registerFile(readData1, readData2, readRegister1, readRegister2, writeData, regWrite);
    input readRegister1, readRegister2,regWrite;
    input [7:0] writeData;
    output reg [7:0] readData1, readData2;
    
    reg [7:0] registers[0:1];
    
    initial
    begin
        registers[0] = 8'b00000001;
        registers[1] = 8'b00000101;
    end
    
    always@(*)
    begin
        readData1 <= registers[readRegister1]; //readRegister1: instruction[3]: rs
        readData2 <= registers[readRegister2]; //readRegister2: instruction[4]: rd
        if(regWrite)
            registers[readRegister2] <= writeData;
    end
endmodule


//module registerFile(readData1, readData2, readRegister1, readRegister2, writeData, regWrite, clk);
//    input readRegister1, readRegister2, clk, regWrite;
//    input [7:0] writeData;
//    output [7:0] readData1, readData2;
    
//    reg [7:0] registers[0:1];
//    //initial
//    //begin 
//    //    registers[0] <= 8'b00000001;
//    //    registers[1] <= 8'b00000101;
//    //end
    
//    assign readData1 = registers[readRegister1]; //readRegister1: instruction[3]: rs
//    assign readData2 = registers[readRegister2]; //readRegister2: instruction[4]: rd
    
//    always@(posedge clk)
//    begin
//        registers[0] <= 8'b00000001;
//        registers[1] <= 8'b00000101;
//        //readData1 <= registers[readRegister1]; //readRegister1: instruction[3]: rs
//        //readData2 <= registers[readRegister2]; //readRegister2: instruction[4]: rd
//        if(regWrite)
//            registers[readRegister2] <= writeData;
//    end
//endmodule