############################ Descriptions ###########################
#Author: Ly Van Minh <vanminhly61@gmail.com>
#Date: 2021/12/18
#####################################################################

CC 				= sdcc
LD				=sdld
SRC_DIR 		= src
INC_DIR			= inc
OBJ_DIR 		= obj
CFLAGS 			= -I$(INC_DIR) 
LDFLAGS			= --stack-auto --model-large \
					--xram-loc 0x00 --code-loc 0x00 --stack-loc 0xB0 \
					--xstack-loc 0x0100 --data-loc 0x30 --idata-loc 0x80 \
					-Wl,-bBSEG=0x20 --iram-size 0x0100 --xram-size 0x0200 \
					--code-size 0x4000 --stack-size 0x40
RM 				= rm -rf
SRCS 			= $(wildcard $(SRC_DIR)/*.c)
RELS			= $(patsubst %.c,$(OBJ_DIR)/%.rel,$(notdir $(SRCS)))
TARGET 			= all
PROJECT_NAME	= chargecase
#####################################################################

$(TARGET): $(OBJ_DIR)/$(PROJECT_NAME).bin

$(OBJ_DIR)/$(PROJECT_NAME).bin: $(OBJ_DIR)/$(PROJECT_NAME).hex
	makebin $< > $@

$(OBJ_DIR)/$(PROJECT_NAME).hex: $(OBJ_DIR)/$(PROJECT_NAME).ihx
	packihx $< > $@

$(OBJ_DIR)/$(PROJECT_NAME).ihx: $(RELS)
	$(LD) $(LDFLAGS) $^ -o $@

$(OBJ_DIR)/%.rel: $(SRC_DIR)/%.c $(INC_DIR)/%.h
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: clean
clean:
	$(RM) $(OBJ_DIR)/*
#####################################################################