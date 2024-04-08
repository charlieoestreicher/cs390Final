#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char data[28] = {0x04, 0x1B, 0x02, 0x15, 0x40, 0x03, 0x1F, 0x43, 0x06, 0x1B, 0x02, 0x46, 0x4B, 0x1E, 0x0F, 0x00, 0x1B, 0x4A, 0x52, 0x16, 0x62, 0x2F, 0x3E, 0x46, 0x2F, 0x64, 0x7B, 0x00};

int garbage_one(int param_1);
int cantaloupe(char* str, int* len);
int durian(char*);
long banana(char* str1, int len1, char* str2, int len2);

int main(int argc, char *argv[]) {
    int opaque_pred = 3;

    if (argc != 2) {
        puts("please enter a single string as a password");
        return 1;
    }
    char* input = argv[1];
    int len;
    int useless = cantaloupe(input, &len);
    int d = durian(input);
    banana(input, len, data, len*3+len-1);
    len = useless;
    puts(data);
    // if (opaque_pred > 2) {
    //     garbage_one(opaque_pred);
    // }
    
    return 0;
}

int garbage_one(int param_1) {
    printf("This is hint number %d \n", param_1);
    return param_1;
}

long banana(char* str1, int len1, char* str2, int len2){
    int j = 0;
    for(int i = 0; i < len2; i++) {
        str2[i] = str2[i] ^ str1[j];
        j++;
        if(j >= len1){
            j = 0;
        }
    }
    return (long) str1;
}

int cantaloupe(char* str, int* len) {
    int c = 0;
    while(str[c] != 0){
        c++;
    }
    *len = c;
    return c+5;
}

int durian(char* str){
    int c = 0;
    int t = 1;
    while(str[c++] != 0){
        char v = str[c] - 0x30;
        if(str[c] >= 0x30 && str[c] < 0x40){
            t *= (int)v + 1;
        }
    }
    return t;
}