#include <stdio.h>
#include <string.h>


int main() {
    char* password;
    char correctPassword[] = "secret";
    char location[] = "our classroom";

    printf("Enter the password: ");
    scanf("%s", password);

    if (strcmp(password, correctPassword) == 0) {
        printf("Password correct. Location revealed: %s\n", location);
    } else {
        printf("Incorrect password. Access denied.\n");
    }

    return 0;
}
