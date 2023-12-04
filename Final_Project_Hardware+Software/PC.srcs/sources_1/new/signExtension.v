module signExtension(signExtOut, signExtIn);
    input[2:0] signExtIn;
    output[7:0] signExtOut;
    reg[7:0] base;

    always@(*) 
    begin
        base = signExtIn;
    end       
    assign signExtOut = base;
endmodule