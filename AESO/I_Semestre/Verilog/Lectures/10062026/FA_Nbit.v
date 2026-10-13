module FA_Nbit(output ripout, output [N-1:0]somma, input ripin, input [N-1:0]x1, input [N-1:0]x2); //FA parametrico
    parameter N=2; //specifico il numero di bit
    wire [N-1:0]rips; //servono per collegare i FA

    FA primo(rips[0], somma[0], ripin, x1[0], x2[0]);

    genvar i; //indice del "for generativo"
    generate //genera parametricamente un numero di componenti in maniera strutturale
        for (i=1; i<N-1; i=i+1)
            begin
                FA fa(rips[i], somma[i], rips[i-1], x1[i], x2[i]);
            end
    endgenerate

    FA ultimo(ripout, somma[N-1], rips[N-2], x1[N-1], x2[N-1]); //ultimo trattato a parte per ripout
endmodule

//ripout è il riporto in uscita dell'ultimo FA
//ripin è il bit di riporto nel primo FA