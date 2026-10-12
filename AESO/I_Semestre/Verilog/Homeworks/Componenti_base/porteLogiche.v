primitive AND(output z, input a, input b);
    table
        0 0 : 0;
        0 1 : 0;
        1 0 : 0;
        1 1 : 1;
    endtable
endprimitive

primitive OR(output z, input a, input b);
    table
        0 0 : 0;
        0 1 : 1;
        1 0 : 1;
        1 1 : 1;
    endtable
endprimitive

primitive XOR(output z, input a, input b);
    table
        0 0 : 0;
        0 1 : 1;
        1 0 : 1;
        1 1 : 0;
    endtable
endprimitive

primitive NAND(output z, input a, input b);
    table
        0 0 : 1;
        0 1 : 1;
        1 0 : 1;
        1 1 : 0;
    endtable
endprimitive

primitive NOR(output z, input a, input b);
    table
        0 0 : 1;
        0 1 : 0;
        1 0 : 0;
        1 1 : 0;
    endtable
endprimitive