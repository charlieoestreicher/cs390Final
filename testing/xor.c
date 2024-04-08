#include <stdlib.h>
#include <stdio.h>
#include <string.h>

char data[27] = {0x04, 0x1B, 0x02, 0x15, 0x40, 0x03, 0x1F, 0x43, 0x06, 0x1B, 0x02, 0x46, 0x4B, 0x1E, 0x0F, 0x00, 0x1B, 0x4A, 0x52, 0x16, 0x62, 0x2F, 0x3E, 0x46, 0x2F, 0x64, 0x7B};

int main(int argc, char** argv){
    if(argc >= 3){
        // int len2 = strlen(argv[2]);
        // char* str2 = argv[2];
        int len2 = 27;
        char* str2 = data;
        int len1 = strlen(argv[1]);
        char* str1 = argv[1];
        int j = 0;
        for(int i = 0; i < len2; i++) {
            str2[i] = str2[i] ^ str1[j];
            j++;
            if(j >= len1){
                j = 0;
            }
        }
        for (int i=0; i<len2; i++) {
            printf("0x%02X, ", (unsigned char)str2[i]);
        }
        puts("");
        for (int i=0; i<len2; i++) {
            printf("%c", (unsigned char)str2[i]);
        }
        puts("");
        printf("len = %d\n", len2);
    }
    return 0;
}