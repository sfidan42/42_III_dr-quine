int		i = 5;
char	filename[50];
char	cmd[100];
#include <stdio.h>
#include <stdlib.h>

#define STR "int%c%ci = %d;%cchar%cfilename[50];%cchar%ccmd[100];%c#include <stdio.h>%c#include <stdlib.h>%c%c#define STR %c%s%c%c%cint main(void)%c{%c%cFILE%c*fd;%c%c%cif (i-- <= 0)%c%c%creturn (1);%c%csprintf(filename, %cSully_%cd.c%c, i);%c%cfd = fopen(filename, %cw%c);%c%cfprintf(fd, STR, 9, 9, i, 10, 9, 10, 9, 10, 10, 10, 10, 34, STR, 34, 10, 10, 10, 10, 9, 9, 10, 10, 9, 10, 9, 9, 10, 9, 34, 37, 34, 10, 9, 34, 34, 10, 9, 10, 9, 10, 9, 34, 37, 37, 37, 34, 10, 9, 10, 9, 10, 10);%c%cfclose(fd);%c%csprintf(cmd, %cclang -Wall -Wextra -Werror %cs -o Sully_%cd && ./Sully_%cd%c, filename, i, i);%c%csystem(cmd);%c%creturn (0);%c}%c"

int main(void)
{
	FILE	*fd;

	if (i-- <= 0)
		return (1);
	sprintf(filename, "Sully_%d.c", i);
	fd = fopen(filename, "w");
	fprintf(fd, STR, 9, 9, i, 10, 9, 10, 9, 10, 10, 10, 10, 34, STR, 34, 10, 10, 10, 10, 9, 9, 10, 10, 9, 10, 9, 9, 10, 9, 34, 37, 34, 10, 9, 34, 34, 10, 9, 10, 9, 10, 9, 34, 37, 37, 37, 34, 10, 9, 10, 9, 10, 10);
	fclose(fd);
	sprintf(cmd, "clang -Wall -Wextra -Werror %s -o Sully_%d && ./Sully_%d", filename, i, i);
	system(cmd);
	return (0);
}
