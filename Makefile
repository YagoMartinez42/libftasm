#This Assembler Makefile is only for Unix/Linux 64 using nasm
NAME := libasm.a
BLD_DIR := build/
SRC_DIR := src/
AS := nasm
AR := ar
ASFLAGS := -f elf64
ARFLAGS := rcs
RM := rm -rf
LST_SRC := minbase.s
OBJ := $(patsubst %.s, $(BLD_DIR)%.o, $(SRC))
DEP := $(patsubst %.s, $(BLD_DIR)%.d, $(SRC))
SRC := $(addprefix $(SRC_DIR), $(LST_SRC))

#Default target
all: $(NAME)
$(NAME): $(OBJS)
	$(AR) $(ARFLAGS) $(OBJS) 

-include $(DEP)
$(BLD_DIR)%.o: %.s
	mkdir -p $(shell dirname $@)
	$(AS) $(ASFLAGS) -MD $(@:.o=.d) $< -o $@

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