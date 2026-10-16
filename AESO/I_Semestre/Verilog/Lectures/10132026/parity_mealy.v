module Parity(output out, input in, input clock);
    reg stato;
    reg new_stato;

    initial
        stato = 0;

    always @(posedge clock)
        stato <= new_stato;

    always @(in, stato)
        new_stato <= (!in && stato) || (in && !stato);

    assign
        out = (!in && !stato) || (in && stato);
endmodule