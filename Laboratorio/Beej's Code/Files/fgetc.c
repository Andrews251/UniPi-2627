#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <assert.h>

int main(int argc, char *argv[]){
    
    FILE *f;

    f = fopen("hello.txt", "r"); //il contenuto del file è "ciao"
    
    if(f == NULL)
        fprintf(stderr, "il file non esiste.\n");

    int c = fgetc(f); //in questo caso FILE* tiene traccia della posizione all'interno del file

    printf("%c\n", c); //qui stampa 'c'

    c = fgetc(f);

    printf("%c\n", c); //qui stampa 'i'

    //quindi un altro modo di stampare il file carattere per carattere è

    while((c = fgetc(f)) != EOF){
        printf("%c\n", c); //stampo i restanti caratteri 'a' e 'o'
    }

    fclose(f);
}