#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <assert.h>

int main(int argc, char *argv[]) {
    
    FILE *f;
    char s[1024]; //buffer necessario per la fgets()    
    int count = 0; //lo uso per mostrare il numero di righe di testo

    f = fopen("quote.txt", "r");

    while(fgets(s, sizeof s, f) != NULL){
        printf("%d: %s", ++count, s);
    }
    printf("\n");
    fclose(f);

    return 0;
}