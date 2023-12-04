module pcAdder(pcAdderOut, pcAdderIn);
    input [7:0] pcAdderIn;
    output reg [7:0] pcAdderOut;
    
    always@(pcAdderIn)
    begin
        pcAdderOut <= pcAdderIn + 1;
    end
endmodule