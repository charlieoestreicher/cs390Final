#include <stdlib.h>
#include <stdio.h>
#include <string.h>

char data[27] = {0x04, 0x1B, 0x02, 0x15, 0x40, 0x03, 0x1F, 0x43, 0x06, 0x1B, 0x02, 0x46, 0x4B, 0x1E, 0x0F, 0x00, 0x1B, 0x4A, 0x52, 0x16, 0x62, 0x2F, 0x3E, 0x46, 0x2F, 0x64, 0x7B};

int main(int argc, char** argv){
    char* str = "love390";
    char enc[8];
    char dec[8];
    for(int i = 0; i < 8; i++){
        enc[i] = (str[i] - 0x10) ^ 0x23;
        dec[i] = (enc[i] ^ 0x23) + 0x10;
    }
    for(int i = 0; i < 8; i++){
        printf("%c", enc[i]);
    }
    puts("");
    for(int i = 0; i < 8; i++){
        printf("%c", dec[i]);
    }
    puts("");
    for(int i = 0; i < 8; i++){
        printf("0x%02X, ", enc[i]);
    }
    puts("");
    for(int i = 0; i < 8; i++){
        printf("0x%02X, ", dec[i]);
    }
    puts("");
}