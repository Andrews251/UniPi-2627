module Multiplexer(output y, input a, input b, input s);
     y = (a && (!s)) || (b && s); //riduzione effettuata con proprietà dell'algebra booleana
endmodule

//quindi vale 1 se il segnale è negato e il a vale 1 oppure se sia il segnale che b valgono 1