module instMem(inst, pcOut);
    input [7:0] pcOut; //pc output
    reg [7:0] instMem[4:0]; //instruction memory
    output reg [7:0] inst; //instruction
    
    initial
    begin
        //rs=allInsArray[3]=$0 | source(1) reg
        //rd/rt=allInsArray[4]=$1 | source(2)/destination reg
        instMem[0] <= 8'b00010000; //add inst
        instMem[1] <= 8'b10010101; //addi inst
        instMem[2] <= 8'b10110010; //sw inst
        instMem[3] <= 8'b11010111; //lw inst
        instMem[4] <= 8'b11110011; //sll inst
    end
    always@(*)
    begin
        inst <= instMem[pcOut];
    end
endmodule