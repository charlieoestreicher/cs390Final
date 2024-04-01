#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[]) {
    char *password;
    char correctPassword[] = "secret";
    char location[] = "our classroom";

    if (argc != 2) {
        puts("please enter a password");
        return 1;
    }

    password = argv[1];

    if (strcmp(password, correctPassword) == 0) {
        printf("Password correct. Location revealed: %s\n", location);
    } else {
        printf("Incorrect password. Access denied.\n");
    }

    return 0;
}
