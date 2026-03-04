#include <stdio.h>
#include <string.h>

int main() {
	printf("enter your name: ");
	char name[32];
	fgets(name, sizeof name, stdin);
	name[strcspn(name, "\n")] = '\0';
	printf("enter your age: ");
	int age;
	scanf("%d", &age);
	printf("Hello, %s, on your next birthday, you will be %d.\n", name, age+1);
	return 0;
}
