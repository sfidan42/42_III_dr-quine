SRC		=	Colleen.s Grace.s
OBJ		=	${SRC:.s=.o}
ASM		=	nasm -f elf64

%.o: %.s
	${ASM} $< -o $@
	gcc $@ -o ${@:.o=} -static

all: ${OBJ}
	@./Colleen > tmp_Colleen
	@diff tmp_Colleen Colleen.s && echo "Colleen OK" || echo "Colleen KO"
	@./Grace
	@diff Grace.s Grace_kid.s && echo "Grace OK" || echo "Grace KO"
	
clean:
	rm -f tmp_Colleen

fclean: clean
	rm -f ${OBJ} ${OBJ:.o=} ${OBJ:.o=.lst} Grace_kid.s

re: fclean all

.PHONY: all clean fclean re
