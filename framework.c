#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

char data[28] = {0x04, 0x1B, 0x02, 0x15, 0x40, 0x03, 0x1F, 0x43, 0x06, 0x1B, 0x02, 0x46, 0x4B, 0x1E, 0x0F, 0x00, 0x1B, 0x4A, 0x52, 0x16, 0x62, 0x2F, 0x3E, 0x46, 0x2F, 0x64, 0x7B, 0x00};
char forhash[30] = {0x61, 0x73, 0x64, 0x6C, 0x6B, 0x66, 0x7F, 0x7C, 0x45, 0x76, 0x00, 0x0A, 0x03, 0x6A, 0x6E, 0x62, 0x7A, 0x2E, 0x6D, 0x2F, 0x2E, 0x38, 0x33, 0x2A, 0x26, 0x33, 0x32, 0x3B, 0x41, 0x2E};

int garbage_one(int param_1);
int cantaloupe(char* str, int* len, int* collapse);
int durian(char*);
long banana(char* str1, int len1, char* str2, int len2);
int fickleberry(int val, int range, int gap);
int gourd(char* str, int len, int rand);
int elderberry(char* str);

int main(int argc, char *argv[]) { 
    int opaque_pred = 3;

    if (argc != 2) {
        puts("please enter a single string as a password");
        return 1;
    }
    
    char* input = argv[1];
    int len;
    int seed = 0;
    int useless = cantaloupe(input, &len, &seed);
    srand(seed);
    int sw = fickleberry(rand(), data[26], data[4]);
    int out = 9;
    if(sw > -30 && sw < 5) out = gourd(input, len, fickleberry(rand(), 30, 5));
    if(sw < 56 && sw > -56) out = gourd(input, len, fickleberry(rand(), 40, 10));
    if(sw > 200) out = gourd(input, len, fickleberry(rand(), 20, 20));
    if(sw < -200) out = gourd(input, len, fickleberry(rand(), 30, 10));
    if( sw < -31 && sw > -124) out = 7;

    int d = durian(input);
    int h = elderberry(input);
    if(d != 1 || h == 0){
        printf("WRONG\n");
    }
    int check = elderberry(input);
    banana(input, len, data, out*3+out-1);
    len = useless;
    puts(data);
    
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

int cantaloupe(char* str, int* len, int* collapse) {
    int c = 0;
    int d = 0;
    while(str[c] != 0){
        d += (int)str[c] * 12;
        c++;
    }
    *collapse = d;
    *len = c;
    return c+5;
}

int durian(char* str){
    int c = 0;
    int t = 1;
    int k = 0;
    int n = 0;
    int prev = 4;
    while(str[c++] != 0){
        char v = str[c] - 0x30;
        if(str[c] >= 0x30 && str[c] < 0x40){
            if(c < 3 || c > 7) return -1;
            t *= (int)v + 1;
            k += v;
            n++;
            if(v % 3 != 0){
                return -1;
            }
            if(n == 2 && v / prev != 3){
                return -1;
            }
            prev = v;
        }
    }
    if(n != 3 && t != 40 && (t-k) !=28){
        return -1;
    }
    return 1;
}

int fickleberry(int val, int range, int gap){
    val %= range;
    val -= range / 2;
    if(val < 0){
        val -= gap;
    } else {
        val += gap;
    }
    return val;
}

int gourd(char* str, int len, int rand){
    printf("Gourd called!!!\n");
    int c = 39;
    for(int i = 0; i < len; i++) {
        int d = rand * i;
        str[i] = str[len - i - 1] ^ d;
        c += d;
    }
    return c;
}

int elderberry(char* str) {
    int len = strlen(str);
    char nonums[10];
    memset(nonums, '\0', sizeof(nonums));
    int j = 0;
    for(int i=0; i<len; i++) {
        if (!isdigit(str[i])) {
            nonums[j] = (str[i]-0x10)^0x23;
            j++;
        }
    }
    if (strlen(nonums) != 4) {
        return 0;
    }
    for(int i=0; i<4; i++) {
        if(nonums[i] != forhash[i+6]) {
            return 0;
        }
    }
    return 1;
}