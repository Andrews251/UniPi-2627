module fsm_abb(output out, input [1:0]in, input clock);
    reg [1:0] stato;
    reg [1:0] new_stato;

    initial
        stato = 0;

    always @(posedge clock)
        stato <= new_stato;

    always @(stato, in)
        begin
            new_stato[0] <= !in[1] || (!stato[1] && stato[0] && !in[1]);
            new_stato[1] <= !stato[1] && stato[0] && !in[1] && in[0];
        end

    assign
        out = stato[1] && stato[0] && !in[1] && in[0];
endmodule