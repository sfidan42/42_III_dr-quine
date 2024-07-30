SRC		=	Colleen.s Grace.s Sully.s
OBJ		=	${SRC:.s=.o}
EXE		=	${SRC:.s=}
ASM		=	./nasm/nasm -f macho64

%: %.s
	${ASM} $< -o $@.o
	gcc $@.o -o $@ -Wl,-no_pie

all: extract ${EXE}
	./Colleen > tmp_Colleen
	diff tmp_Colleen Colleen.s && echo "Colleen OK" || echo "Colleen KO"
	./Grace
	diff Grace.s Grace_kid.s && echo "Grace OK" || echo "Grace KO"
	./Sully
	diff Sully.s Sully_0.s || echo "Sully 5 vs 0"
	diff Sully_3.s Sully_2.s || echo "Sully 3 vs 2"

extract:
	unzip -o nasm.zip

clean:
	rm -f tmp_Colleen Grace_kid.s Sully_*

fclean: clean
	rm -f ${OBJ} ${EXE}

re: fclean all

.PHONY: all clean fclean re extract
