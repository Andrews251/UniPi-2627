#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <assert.h>


//scopo di questo programma è il tentativo di programmare una macchina a stati finiti (FSM)
int main(int argc, char *argv[]) {
    
    int stati[3] = {0,1,2};
    int s = 0;
    char c = 'p';
    bool succ = false;
    while(!succ){
        int e = scanf("%c", &c);
        if(e != 1)
            exit(1);

            switch(c){
                case 'a':
                    s = 1;
                    
            }
    }
    
    return 0;
}