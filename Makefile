all:
	gcc Colleen.c -o Colleen
	./Colleen > tmp_Colleen
	diff tmp_Colleen Colleen.c && echo "Colleen OK" || echo "Colleen KO"

clean:
	rm -f tmp_Colleen Colleen