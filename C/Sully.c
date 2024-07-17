int		i = 5;
char	filename[50];
char	cmd[100];
#include <stdio.h>
#include <stdlib.h>

#define STR "int		i = %4$d;%1$cchar	filename[50];%1$cchar	cmd[100];%1$c#include <stdio.h>%1$c#include <stdlib.h>%1$c%1$c#define STR %2$c%3$s%2$c%1$c%1$cint	main(void)%1$c{%1$c	FILE	*fd;%1$c%1$c	if (i-- <= 0)%1$c		return (1);%1$c	sprintf(filename, %2$cSully_%5$cd.c%2$c, i);%1$c	fd = fopen(filename, %2$cw%2$c);%1$c	fprintf(fd, STR, 10, 34, STR, i, 37);%1$c	fclose(fd);%1$c	sprintf(cmd, %2$cclang -Wall -Wextra -Werror %5$cs -o Sully_%5$cd && ./Sully_%5$cd%2$c, filename, i, i);%1$c	system(cmd);%1$c	return (0);%1$c}%1$c"

int	main(void)
{
	FILE	*fd;

	if (i-- <= 0)
		return (1);
	sprintf(filename, "Sully_%d.c", i);
	fd = fopen(filename, "w");
	fprintf(fd, STR, 10, 34, STR, i, 37);
	fclose(fd);
	sprintf(cmd, "clang -Wall -Wextra -Werror %s -o Sully_%d && ./Sully_%d", filename, i, i);
	system(cmd);
	return (0);
}
