SRC		=	Colleen.asm
OBJ		=	${SRC:.asm=.o}
ASM		=	nasm -f elf64

%.o: %.asm
	${ASM} $< -o $@

all: ${OBJ}
	@gcc Colleen.o -o Colleen
	@./Colleen > tmp_Colleen
	@diff tmp_Colleen Colleen.c && echo "Colleen OK" || echo "Colleen KO"
	
clean:
	rm -f tmp_Colleen

fclean: clean
	rm -f ${OBJ}

re: fclean all

.PHONY: all clean fclean re