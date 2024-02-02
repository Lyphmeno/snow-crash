#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void rotateString(char *str) {
    int i, len;
    len = strlen(str);

    for (i = 0; i < (len - 1); i++) {
        str[i] -= i;
        if (str[i] < 0) {
            str[i] += 128;
        }
    }
}

int main(int argc, char *argv[]) {
	(void)argc;
    FILE *file = fopen(argv[1], "r");
    char line[10000];
    while (fgets(line, sizeof(line), file)) {
        rotateString(line);
		printf("%s", line);
    }
    fclose(file);
    return 0;
}
