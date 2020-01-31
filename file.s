    .equ STACK_SIZE, 0x2000000
    .text
    .thumb
    .global _start
    .type start, %function

_start:
    .word STACK_SIZE, start
start:
    mov r1, #0x01
    mov r2, #0x02
    mov r3, #0x03
    mov r4, #0x04
end:
    b end
    .end
