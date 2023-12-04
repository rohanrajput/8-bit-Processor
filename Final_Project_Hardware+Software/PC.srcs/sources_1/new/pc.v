module pc(pcOut, pcIn, clk, rst);
    input [7:0] pcIn;
    output reg [7:0] pcOut;
    input clk, rst;
    
    always@(posedge clk)
    begin
    if(rst)
    begin
        pcOut <= 8'b0;
    end
    else
    begin
        pcOut <= pcIn;
    end
    end
endmodule