############################ Descriptions ###########################
#Author: Ly Van Minh <vanminhly61@gmail.com>
#Date: 2021/12/18
#####################################################################

CC 				= sdcc
LD				= sdld
CFLAGS 			= -I. --stack-auto --model-large \
					--xram-loc 0x00 --code-loc 0x00 --stack-loc 0xB0 \
					--xstack-loc 0x0100 --data-loc 0x30 --idata-loc 0x80 \
					-Wl,-bBSEG=0x20 --iram-size 0x0100 --xram-size 0x0200 \
					--code-size 0x4000 --stack-size 0x40
RM 				= rm -rf
SRCS 			= $(wildcard *.c)
RELS			= $(patsubst %.c,%.rel,$(SRCS))
TARGET 			= all
PROJECT_NAME	= CHARGECASE_HDX_2968
#####################################################################

$(TARGET): $(PROJECT_NAME).hex $(PROJECT_NAME).bin

$(PROJECT_NAME).bin: %.hex
	objcopy -I ihex -O binary $< $@

$(PROJECT_NAME).hex: $(PROJECT_NAME).ihx
	packihx $< > $@

$(PROJECT_NAME).ihx: $(RELS)
	$(LD) $@ $^

%.rel: %.c %.h
	$(CC) -c $(CFLAGS) $< -o $@

.PHONY: clean
clean:
	$(RM) *.asm *.hex *.ihx *.lst *.map *.mem *.rel *.rst *.sym *.bin *.lk
#####################################################################