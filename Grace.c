#include <stdio.h>
#define STR "#include <stdio.h>%c#define STR %c%s%c%c%c#define PRINT(fd) (fprintf(fd, STR, 10, 34, STR, 34, 10, 10, 10, 10, 34, 34, 34, 34, 10, 10, 9, 10, 10, 10), fd)%c%c#define FT() int main(void) { fclose(PRINT(fopen(%cGrace_kid.c%c, %cw%c))); }%c/*%c%cGrace%c*/%cFT()%c"

#define PRINT(fd) (fprintf(fd, STR, 10, 34, STR, 34, 10, 10, 10, 10, 34, 34, 34, 34, 10, 10, 9, 10, 10, 10), fd)

#define FT() int main(void) { fclose(PRINT(fopen("Grace_kid.c", "w"))); }
/*
	Grace
*/
FT()
