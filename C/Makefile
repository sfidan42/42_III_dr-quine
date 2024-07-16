SRC		=	Colleen.c Grace.c Sully.c
NAME	=	${SRC:.c=}

CC	=	clang -Wall -Wextra -Werror

%: %.c
	${CC} $< -o $@

all: ${NAME}
	@./Colleen > tmp_Colleen
	@diff tmp_Colleen Colleen.c && echo "Colleen OK" || echo "Colleen KO"
	@./Grace
	@diff Grace.c Grace_kid.c && echo "Grace OK" || echo "Grace KO"
	@./Sully
	@diff Sully.c Sully_0.c || echo "----------------------"
	@diff Sully_3.c Sully_2.c || echo "----------------------"

clean:
	rm -f tmp_Colleen Grace_kid.c Sully_[0-4].c Sully_[0-4]

fclean: clean
	rm -f ${NAME}

re: fclean all

.PHONY: all clean fclean re