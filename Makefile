all:
	make -C ./C
	@echo "******************************************************************"
	@echo "******************************************************************"
	make -C ./ASM

clean:
	make clean -C ./C
	make clean -C ./ASM

fclean:
	make fclean -C ./C
	make fclean -C ./ASM
re:
	make re -C ./C
	make re -C ./ASM

.PHONY: all clean fclean re