#include <stdio.h>
/*
	Colleen
*/
void	Colleen(void)
{
	char	*s;

	s = "#include <stdio.h>%1$c/*%1$c%2$cColleen%1$c*/%1$cvoid%2$cColleen(void)%1$c{%1$c%2$cchar%2$c*s;%1$c%1$c%2$cs = %3$c%4$s%3$c;%1$c%2$cprintf(s, 10, 9, 34, s);%1$c}%1$cint%2$cmain(void)%1$c{%1$c%2$c/*%1$c%2$c%2$cMain%1$c%2$c*/%1$c%2$cColleen();%1$c%2$creturn (0);%1$c}%1$c";
	printf(s, 10, 9, 34, s);
}
int	main(void)
{
	/*
		Main
	*/
	Colleen();
	return (0);
}
