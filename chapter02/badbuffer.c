#include <stdio.h>
#include <string.h>

int main() {
    char buffer[8];
    printf("Enter your name: ");
    scanf("%s", buffer);
    printf("Hello, %s, the answer to all things is 42\n", buffer);
    return 0;
}