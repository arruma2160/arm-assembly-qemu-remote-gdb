#! /bin/bash

# Runs qemu emulation on board `lm3s6965evb` and sets a gdb process waiting
# at tcp port 1234 ready to use for remote debuggin.
qemu-system-arm -M lm3s6965evb -m 128M -nographic -s -S -kernel ./file.bin &
gcc-arm-none-eabi-9-2019-q4-major/bin/arm-none-eabi-gdb --tui \
    -ex "target remote 127.0.0.1:1234" -ex "file ./file.elf"
