#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <assert.h>

int main(int argc, char *argv[]) {
    
    FILE *f;

    char name[1024]; //buffer necessario per fscanf
    float length; //variabili necessarie per i dati del file "whales.txt"
    int mass;

    f = fopen("whales.txt", "r");

    while((fscanf(f, "%s %f %d", name, &length, &mass)) != EOF){
        printf("%s whale, %d tonnes, %.1f meters\n", name, mass, length);
    }

    fclose(f);

    //si potrebbe anche utilizzare %ms ed evitare il buffer (da notare che però %ms è solo standard POSIX)
    printf("\n|--- STAMPA USANDO \"%%ms\" ---|\n\n"); //nota come hai scritto \"%%ms\" %% è un escape per pritnf
    char *s;
    f = fopen("whales.txt", "r");

    while((fscanf(f, "%ms %f %d", &s, &length, &mass)) != EOF){
        printf("%s whale, %d tonnes, %.1f meters\n", s, mass, length);
        printf("s è allocato a : %p\n", &s);
        free(s); //in questo modo 
    }
    

    fclose(f);
    return 0;
}