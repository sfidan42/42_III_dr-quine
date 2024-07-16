all:
	make -C ./C

clean:
	make clean -C ./C

fclean:
	make fclean -C ./C

re:
	make re -C ./C

.PHONY: all clean fclean re