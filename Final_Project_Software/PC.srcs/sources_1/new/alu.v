module alu(aluOut, aluInput1, aluInput2, aluOp);
    input aluOp;
    input [7:0] aluInput1, aluInput2;
    output[7:0] aluOut;
    reg[7:0] base;
    
    always@(*) 
    begin
        if(aluOp==0)
        begin
             base <= aluInput1 + aluInput2;
        end
        else if(aluOp==1)
        begin
             base <= aluInput1 << aluInput2;
        end
    end    
    assign aluOut = base;
endmodule