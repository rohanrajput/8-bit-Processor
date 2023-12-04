module dataMem(readData, address, writeData, memWrite, memRead);
    input [7:0] address, writeData;
    input memWrite, memRead;
    output reg [7:0] readData;
    reg [7:0] dataMemoryArray[255:0];
    
    initial
    begin
        //$readmemb("DataMem.mem", dataMemoryArray);
        dataMemoryArray[0] <= 8'b00000000;
        dataMemoryArray[1] <= 8'b00000001;
        dataMemoryArray[2] <= 8'b00000010;
        dataMemoryArray[3] <= 8'b00000011;
        dataMemoryArray[4] <= 8'b00000100;
        dataMemoryArray[5] <= 8'b00000101;
        dataMemoryArray[6] <= 8'b00000110;
        dataMemoryArray[7] <= 8'b00000111;
        dataMemoryArray[8] <= 8'b00001000;
        dataMemoryArray[9] <= 8'b00001001;
        dataMemoryArray[10] <= 8'b00001010;
        dataMemoryArray[11] <= 8'b00001011;
        dataMemoryArray[12] <= 8'b00001100;
        dataMemoryArray[13] <= 8'b00001101;
        dataMemoryArray[14] <= 8'b00001110;
        dataMemoryArray[15] <= 8'b00001111;
    end
    
    always @(*)
    begin
        if(memWrite)
        begin
            dataMemoryArray[address] <= writeData;
        end
        else if(memRead)
        begin
            readData <= dataMemoryArray[address];
        end
    end
endmodule