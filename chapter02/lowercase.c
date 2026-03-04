#include <stdio.h>

int main() {
    char ch;
    printf("enter an uppercase letter: ");
    scanf("%c", &ch);
    printf("%c lowercased is %c\n", ch, ch+32);
    return 0;
}