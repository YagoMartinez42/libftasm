#This Assembler Makefile is only for MacOS 64 using nasm
#Defs
NAME := libftasm.a
AS := nasm
AR := ar -rcs
ASFLAGS := -f macho64

#Sources
SRCS := minbase.s

#Generate objects
OBJS := $(SRCS:.s=.o)

#Remove
RM := rm -rf

#Default target
all: $(NAME)
$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

#Clean objects
clean:
	$(RM) $(OBJS)

#Clean objects and library 
fclean: clean
	$(RM) $(NAME)

#Repeat: Clean all and compile all
re: fclean all

#Execute no matter a file with that name exists
.PHONY: all bonus clean fclean re