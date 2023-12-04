module mux(muxOut, muxInput1, muxInput2, selectLine);
    input[7:0] muxInput1, muxInput2;
    input selectLine;
    output[7:0] muxOut;
    reg[7:0] base;
    
    always@(*) 
    begin
        if(selectLine==0)
        begin
             base <= muxInput1;
        end
        else if(selectLine==1)
        begin
             base <= muxInput2;
        end
    end    
    assign muxOut = base;
endmodule