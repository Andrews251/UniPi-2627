module latchD(output q, output notq, input clock, input d);
    wire r, s;

    and(r, clock, !d);
    and(s, clock, d);

    latchSR latch(q, notq, r, s);
endmodule