int		i = 5;
char	filename[50];
char	cmd[100];
#include <stdio.h>
#include <stdlib.h>

#define STR "hello"

int	main(void)
{
	FILE	*fd;

	if (i-- <= 0)
		return (1);
	sprintf(filename, "Sully_%d.c", i);
	fd = fopen(filename, "w");
	fprintf(fd, STR);
	fclose(fd);
	sprintf(cmd, "clang -Wall -Wextra -Werror %s -o Sully_%d", filename, i);
	system(cmd);
	return (0);
}
