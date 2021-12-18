############################ Descriptions ###########################
#Author: Ly Van Minh <vanminhly61@gmail.com>
#Date: 2021/12/18
#####################################################################

CC 				= sdcc
SRC_DIR 		= ./src
INC_DIR			= ./inc
OBJ_DIR 		= ./obj
CFLAGS 			= -Werror -I
RM 				= rm -rf
SRCS 			= $(wildcard $(SRC_DIR)/*.c)
RELS			= $(patsubst %.c, $(OBJ_DIR)/%.rel, $(notdir $(SRCS)))
TARGET 			= all
PROJECT_NAME	= CHARGECASE_HDX_2968
#####################################################################

$(TARGET): $(OBJ_DIR)/(PROJECT_NAME).hex 

$(OBJ_DIR)/(PROJECT_NAME).hex: $(OBJ_DIR)/(PROJECT_NAME).ihx
	packihx $< > $@

$(OBJ_DIR)/(PROJECT_NAME).ihx: $(OBJ_DIR)/%.rel
	$(CC) $(CFLAGS) -o $@ $^

$(OBJ_DIR)/%.rel: $(SRC_DIR)/%.c $(INC_DIR)/%.h
	$(CC) $(CFLAGS) -c $@ $<

.PHONY: clean
clean:
	$(RM) $(OBJ_DIR)/*
#####################################################################