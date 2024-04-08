#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[]) {
    char *password;
    char correctPassword[] = "secret";
    char location[] = "our classroom";
    int opaque_pred = 3;

    if (argc != 2) {
        puts("please enter a single string as a password");
        return 1;
    }
    garbage_one(opaque_pred);

    password = argv[1];

    if (strcmp(password, correctPassword) == 0) {
        printf("Password correct. Location revealed: %s\n", location);
    } else {
        printf("Incorrect password. Access denied.\n");
    }

    return 0;
}

int garbage_one(int param_1) {
    printf("%d", 3);
    return param_1;

}
