############################ Descriptions ###########################
#Author: Ly Van Minh <vanminhly61@gmail.com>
#Date: 2021/12/18
#####################################################################
# AS				= sdas8051
CC 				= sdcc
SRC_DIR 		= ./src
INC_DIR			= ./inc
OBJ_DIR 		= ./obj
CFLAGS 			= -I$(INC_DIR) --model-large --xram-loc 0x00 --code-loc 0x00 \
					--xstack-loc 0x0100 --data-loc 0x30 --idata-loc 0x80 \
					--iram-size 0x0100 --xram-size 0x0200 \
					--code-size 0x4000 --stack-size 0x40
RM 				= rm -rf
SRCS 			= $(wildcard $(SRC_DIR)/*.c)
RELS			= $(patsubst %.c,$(OBJ_DIR)/%.rel,$(notdir $(SRCS)))
PROJECT_NAME	= chargecase
#####################################################################

all: $(OBJ_DIR)/$(PROJECT_NAME).bin

$(OBJ_DIR)/$(PROJECT_NAME).bin: $(OBJ_DIR)/$(PROJECT_NAME).hex
	makebin $< > $@

$(OBJ_DIR)/$(PROJECT_NAME).hex: $(OBJ_DIR)/$(PROJECT_NAME).ihx
	packihx $< > $@

$(OBJ_DIR)/$(PROJECT_NAME).ihx: $(RELS)
	$(CC) $(CFLAGS) -o $@ $^

$(OBJ_DIR)/%.rel: $(SRC_DIR)/%.c $(INC_DIR)/%.h
	$(CC) -c $(CFLAGS) -o $@ $<

.PHONY: clean
clean:
	$(RM) $(OBJ_DIR)/*
#####################################################################