module registerFile(readData1, readData2, readRegister1, readRegister2, writeData, regWrite, clk, rst);
    input readRegister1, readRegister2, clk, regWrite, rst;
    input [7:0] writeData;
    output [7:0] readData1, readData2;
    
    reg [7:0] registers[0:1];
    //initial
    //begin
    //    registers[0] <= 8'b00000001;
    //    registers[1] <= 8'b00000101;
    //end
    
    assign readData1 = registers[readRegister1]; //readRegister1: instruction[3]: rs
    assign readData2 = registers[readRegister2]; //readRegister2: instruction[4]: rd
    
    always@(posedge clk)
    begin
        if(rst)
        begin
            registers[0] <= 8'b00000001;
            registers[1] <= 8'b00000101;
        end
        //readData1 <= registers[readRegister1]; //readRegister1: instruction[3]: rs
        //readData2 <= registers[readRegister2]; //readRegister2: instruction[4]: rd
        else if(regWrite)
        begin
            registers[readRegister2] <= writeData;
        end
    end
endmodule