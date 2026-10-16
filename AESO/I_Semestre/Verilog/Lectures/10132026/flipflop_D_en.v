module FlipFlopD_en(output q, output notq, input clock, input d, input en);
    wire we;

    assign
        we = clock && en;

    FlipFlopD ff(q, notq, we, d);
endmodule