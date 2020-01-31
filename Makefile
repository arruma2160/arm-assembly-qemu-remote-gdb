DIR="./gcc-arm-none-eabi-9-2019-q4-major/bin"
AS=${DIR}/arm-none-eabi-as
LD=${DIR}/arm-none-eabi-ld
CP=${DIR}/arm-none-eabi-objcopy

all:
	${AS} -mcpu=cortex-m3 -ggdb file.s -o file.o
	${LD} -Ttext=0x00 -nostdlib file.o -o file.elf
	${CP} -O binary file.elf file.bin

.PHONY: clean
clean:
	@rm *.o *.elf *.bin
