############################ Descriptions ###########################
#Author: Ly Van Minh <vanminhly61@gmail.com>
#Date: 2021/12/18
#####################################################################

CC 				= sdcc
SRC_DIR 		= ./src
INC_DIR			= ./inc
OBJ_DIR 		= ./obj
CFLAGS 			= -I$(INC_DIR) --stack-auto
LDFLAGS			= --xram-loc 0x00 --code-loc 0x00 --stack-loc 0xFF --xstack-loc 0x0100 \
					--data-loc 0x20 --idata-loc 0x80 -Wl-bBSEG=0x20 --iram-size 0x0100 \
					--xram-size 0x0200 --code-size 0x4000 --stack-size 0x80
RM 				= rm -rf
SRCS 			= $(wildcard $(SRC_DIR)/*.c)
RELS			= $(patsubst %.c, $(OBJ_DIR)/%.rel, $(notdir $(SRCS)))
TARGET 			= all
PROJECT_NAME	= CHARGECASE_HDX_2968
#####################################################################

$(TARGET): $(OBJ_DIR)/$(PROJECT_NAME).bin

$(OBJ_DIR)/$(PROJECT_NAME).bin: $(OBJ_DIR)/$(PROJECT_NAME).hex
	objcopy -I ihex -O binary $< $@

$(OBJ_DIR)/$(PROJECT_NAME).hex: $(OBJ_DIR)/$(PROJECT_NAME).ihx
	packihx $< > $@

$(OBJ_DIR)/$(PROJECT_NAME).ihx: $(RELS)
	$(CC) --model-large $(CFLAGS) $(LDFLAGS) $^ -o $@

$(OBJ_DIR)/%.rel: $(SRC_DIR)/%.c $(INC_DIR)/%.h
	$(CC) $(CFLAGS) $(LDFLAGS) -c $< -o $@

.PHONY: clean
clean:
	$(RM) $(OBJ_DIR)/*
#####################################################################