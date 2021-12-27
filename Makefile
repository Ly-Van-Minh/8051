############################ Descriptions ###########################
#Author: Ly Van Minh <vanminhly61@gmail.com>
#Date: 2021/12/18
#####################################################################
VPATH			= ./
CC 				= sdcc
CFLAGS 			= --model-large -I.
LDFLAGS			= --Werror --xram-loc 0x00 --code-loc 0x00 --data-loc 0x30
RM 				= rm -rf
SRCS 			= $(wildcard *.c)
RELS			= $(patsubst %.c,%.rel,$(SRCS))
PROJECT_NAME	= hdx_2968
#####################################################################

all: $(PROJECT_NAME).bin

$(PROJECT_NAME).bin: $(PROJECT_NAME).hex
	makebin $< $@

$(PROJECT_NAME).hex: $(PROJECT_NAME).ihx
	packihx $< > $@

$(PROJECT_NAME).ihx: $(RELS)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

%.rel: %.c %.h
	$(CC) -c $(CFLAGS) -o $@ $<

.PHONY: clean
clean:
	$(RM) *.asm *.hex *.ihx *.lst *.map *.mem *.rel *.rst *.sym *.bin *.lk
#####################################################################