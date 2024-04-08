#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char data[28] = {0x04, 0x1B, 0x02, 0x15, 0x40, 0x03, 0x1F, 0x43, 0x06, 0x1B, 0x02, 0x46, 0x4B, 0x1E, 0x0F, 0x00, 0x1B, 0x4A, 0x52, 0x16, 0x62, 0x2F, 0x3E, 0x46, 0x2F, 0x64, 0x7B, 0x00};

int garbage_one(int param_1);
int cantaloupe(char* str, int* len);
long banana(char* str1, int len1, char* str2, int len2);
int hash_check(char* str);

int main(int argc, char *argv[]) {
    int opaque_pred = 3;

    if (argc != 2) {
        puts("please enter a single string as a password");
        return 1;
    }
    char* input = argv[1];
    int len;
    cantaloupe(input, &len);
    banana(input, len, data, len*3+len-1);
    puts(data);
    // if (opaque_pred > 2) {
    //     garbage_one(opaque_pred);
    // }

    // password = argv[1];

    // if (strcmp(password, correctPassword) == 0) {
    //     printf("Password correct. Location revealed: %s\n", location);
    // } else {
    //     printf("Incorrect password. Access denied.\n");
    // }
    
    return 0;
}

int garbage_one(int param_1) {
    printf("This is hint number %d \n", param_1);
    return param_1;
}

long banana(char* str1, int len1, char* str2, int len2) {
    int sw = 1;
    while (sw != 0) {
        int i;
        int j;
        switch(sw) {
            case(1):
                i = 0;
                j = 0;
                sw = 2;
                break;
            case(2):
                if(i<len2){
                    sw = 3;
                }
                else{
                    sw = 0;
                }
                break;
            case(3):
                str2[i] = str2[i] ^ str1[j];
                j++;
                i++;
                sw = 4;
                break;
            case(4):
                if(j>=len1) {
                    j = 0;
                }
                sw = 2;
                break;
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

int hash_check(char* str) {
    return 0;
}