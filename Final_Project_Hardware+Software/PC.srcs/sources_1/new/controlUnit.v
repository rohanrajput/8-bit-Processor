module controlUnit(memRead, memToReg, aluOp, memWrite, aluSrc, regWrite, opCode);
    input [2:0] opCode;
    output reg memRead, memToReg, aluOp, memWrite, aluSrc, regWrite;
    
    always@(*)
    begin
        //add instruction
        if(opCode == 3'b000)
        begin
            memRead <= 0;
            memToReg <= 0;
            aluOp <= 0;
            memWrite <= 0;
            aluSrc <= 0;
            regWrite <= 1;
        end 
        //addi instruction
        else if(opCode == 3'b100)
        begin
            memRead <= 0;
            memToReg <= 0;
            aluOp <= 0;
            memWrite <= 0;
            aluSrc <= 1;
            regWrite <= 1;
        end
        //sw instruction
        else if(opCode == 3'b101)
        begin
            memRead <= 0;
            memToReg <= 0;
            aluOp <= 0;
            memWrite <= 1;
            aluSrc <= 1;
            regWrite <= 0;
        end
        //lw instruction
        else if(opCode == 3'b110)
        begin
            memRead <= 1;
            memToReg <= 1;
            aluOp <= 0;
            memWrite <= 0;
            aluSrc <= 1;
            regWrite <= 1;
        end
        //sll instruction
        else if(opCode == 3'b111)
        begin
            memRead <= 0;
            memToReg <= 0;
            aluOp <= 1; 
            memWrite <= 0;
            aluSrc <= 1;
            regWrite <= 1;
        end
    end
endmodule