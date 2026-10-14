module latchSR(output q, output notq, input r, input s);
    wire w1, w2; //wires uscenti dai NOR
    wire nw1, nw2; //negazione dei wire

    or(w1, r, nw2); //gli input sono r e nw2 e l'out è w1
    or(w2, s, nw1);

    not(nw1,w1); //nego le uscite degli OR (creo i NOR)
    not(nw2,w2);

    assign
        q = nw1; //assegno continuamente a q l'uscita negata
    assign
        notq = nw2; //faccio la stessa cosa per notq
endmodule