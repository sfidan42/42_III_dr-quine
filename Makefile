SRC		=	Colleen.c Grace.c
NAME	=	${SRC:.c=}

CC	=	clang -Wall -Wextra -Werror

%: %.c
	${CC} $< -o $@

all: ${NAME}
	@./Colleen > tmp_Colleen
	@diff tmp_Colleen Colleen.c && echo "Colleen OK" || echo "Colleen KO"
	@./Grace
	@diff Grace.c Grace_kid.c && echo "Grace OK" || echo "Grace KO"

clean:
	rm -f tmp_Colleen Grace_kid.c

fclean: clean
	rm -f ${NAME}

re: fclean all

.PHONY: all clean fclean re