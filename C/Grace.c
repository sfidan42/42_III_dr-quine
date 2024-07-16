#include <stdio.h>
#define STR "#include <stdio.h>%c#define STR %c%s%c%c%c#define PRINT(fd) fprintf(fd, STR, 10, 34, STR, 34, 10, 10, 10, 10, 34, 34, 34, 34, 10, 10, 9, 10, 10, 10)%c%c#define FT() int main(void) { FILE *fd = fopen(%cGrace_kid.c%c, %cw%c); PRINT(fd); fclose(fd); }%c/*%c%cGrace%c*/%cFT()%c"

#define PRINT(fd) fprintf(fd, STR, 10, 34, STR, 34, 10, 10, 10, 10, 34, 34, 34, 34, 10, 10, 9, 10, 10, 10)

#define FT() int main(void) { FILE *fd = fopen("Grace_kid.c", "w"); PRINT(fd); fclose(fd); }
/*
	Grace
*/
FT()
