module flipflopD (output q, output notq, input clock, input d);
    wire notclock, n1;
    wire dummy;

    assign 
        notclock = !clock
    latchD master(n1, dummy, d, notclock);
    latchD slave(q, notq, n1, clock);
endmodule   