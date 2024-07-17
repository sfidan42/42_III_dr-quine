SRC		=	Colleen.s
OBJ		=	${SRC:.s=.o}
ASM		=	nasm -f elf64

%.o: %.s
	${ASM} $< -o $@

all: ${OBJ}
	@gcc Colleen.o -o Colleen -static
	@./Colleen > tmp_Colleen
	@diff tmp_Colleen Colleen.s && echo "Colleen OK" || echo "Colleen KO"
	
clean:
	rm -f tmp_Colleen

fclean: clean
	rm -f ${OBJ} ${OBJ:.o=} ${OBJ:.o=.lst}

re: fclean all

.PHONY: all clean fclean re
