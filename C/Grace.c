#include <stdio.h>
#define STR "#include <stdio.h>%1$c#define STR %2$c%3$s%2$c%1$c%1$c#define PRINT(fd) fprintf(fd, STR, 10, 34, STR)%1$c%1$c#define FT() int main(void) { FILE *fd = fopen(%2$cGrace_kid.c%2$c, %2$cw%2$c); PRINT(fd); fclose(fd); }%1$c/*%1$c	Grace%1$c*/%1$cFT()%1$c"

#define PRINT(fd) fprintf(fd, STR, 10, 34, STR)

#define FT() int main(void) { FILE *fd = fopen("Grace_kid.c", "w"); PRINT(fd); fclose(fd); }
/*
	Grace
*/
FT()
