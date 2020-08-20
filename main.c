#include <stdio.h>

const char *greeting(void);

int main() {
	const char *str = greeting();
	printf("%s", str);
}
