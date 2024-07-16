#include <stdio.h>
/*
	Colleen
*/
void	Colleen(void)
{
	char	*s;

	s = "#include <stdio.h>%c/*%c%cColleen%c*/%cvoid%cColleen(void)%c{%c%cchar%c*s;%c%c%cs = %c%s%c;%c%cprintf(s, 10, 10, 9, 10, 10, 9, 10, 10, 9, 9, 10, 10, 9, 34, s, 34, 10, 9, 10, 10, 9, 10, 10, 9, 10, 9, 9, 10, 9, 10, 9, 10, 9, 10, 10);%c}%cint%cmain(void)%c{%c%c/*%c%c%cMain%c%c*/%c%cColleen();%c%creturn (0);%c}%c";
	printf(s, 10, 10, 9, 10, 10, 9, 10, 10, 9, 9, 10, 10, 9, 34, s, 34, 10, 9, 10, 10, 9, 10, 10, 9, 10, 9, 9, 10, 9, 10, 9, 10, 9, 10, 10);
}
int	main(void)
{
	/*
		Main
	*/
	Colleen();
	return (0);
}
