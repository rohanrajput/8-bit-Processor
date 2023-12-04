module testmain;
    reg clk, rst;
    wire [7:0] pcOut, pcIn, inst, readData1, readData2,
                signExtensionOut, mux0Out, aluOut, mux1Out;
    wire memRead, memToReg, aluOp, memWrite, aluSrc, regWrite;
    mainFile MAINFILE(.pcOut(pcOut), .pcIn(pcIn), .clock(clk), .reset(rst), 
                        .inst(inst), .readData1(readData1), .readData2(readData2),
                        .memRead(memRead), .memToReg(memToReg), .aluOp(aluOp), 
                        .memWrite(memWrite), .aluSrc(aluSrc), .regWrite(regWrite),
                        .signExtensionOut(signExtensionOut), .mux0Out(mux0Out), 
                        .aluOut(aluOut), .mux1Out(mux1Out));
    
    initial
    begin
        $monitor($time, "pcOut=%d, pcIn=%d, clk=%b, rst=%b, inst=%d, readData1=%d, readData2=%d, memRead=%b, memToReg=%b, aluOp=%b, memWrite=%b, aluSrc=%b, regWrite=%b, signExtensionOut=%d, mux0Out=%d, aluOut=%d, mux1Out=%d", 
                pcOut, pcIn, clk, rst, inst, readData1, readData2, memRead, memToReg, aluOp, memWrite, aluSrc, 
                regWrite, signExtensionOut, mux0Out, aluOut, mux1Out);
        #0 rst=1; clk=1;
        #1 rst=0; clk=0;
        #1 clk=1;
        #1 clk=0;
        #1 clk=1;
        #1 clk=0;
        #1 clk=1;
        #1 clk=0;
        #1 clk=1;
        #1 clk=0;
        #1 clk=1;
        #1 clk=0;
        #1 clk=1;
        #1 clk=0;
        #1 $finish;
    end
endmodule