module testmain;
    reg clk, rst;
    wire [7:0]  readData1, readData2;
//    wire memRead, memToReg, aluOp, memWrite, aluSrc, regWrite;
    mainFile MAINFILE( .clock(clk), .reset(rst), 
                         .readData1(readData1), .readData2(readData2));
    
    initial
    begin
        $monitor($time, "clk=%b, rst=%b, readData1=%d, readData2=%d", 
                 clk, rst, readData1, readData2);
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