module Registro(output [N-1:0] out, input [N-1:0] in, input en, input clock);
    parameter N = 8;
    wire [N-1:0] notq;

    genvar i;
    generate
        for(i=0; i<N; i=i+1)
            begin
                FlipFlopD_en flipflop(out[i], notq[i], clock, in[i], en);
            end
    endgenerate
endmodule