#include <stdio.h>

int main() {
    int a;
    int b;
    printf("enter first integer: ");
    scanf("%d", &a);
    printf("enter second integer: ");
    scanf("%d", &b);
    printf("their sum is %d\n", a+b);
    printf("their difference is %d\n", a-b);
    printf("their product is %d\n", a*b);
    printf("their quotient is %d\n", a/b);
    return 0;
}