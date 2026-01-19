;Name: Shinde Veena Vinod
;Roll No.: CO2137
;Title: Write an X86/64 ALP to accept five 64 bit hexadecimal number from user and store them in an array and display the accepted numbers.

section .data
    msg1 db 10,13,"Enter 5 64-bit numbers"
    len1 equ $-msg1
    msg2 db 10,13,"Entered 5 64-bit numbers are:"
    len2 equ $-msg2

section .bss
    array   resb 200
    counter resb 1

section .text
    global _start

_start:
    ; display message
    MOV RAX, 1
    MOV RDI, 1
    MOV RSI, msg1
    MOV RDX, len1
    Syscall

    ; accept numbers
    MOV byte [counter], 05
    MOV RBX, 00

loop1:
    MOV RAX, 0
    MOV RDI, 0
    MOV RSI, array
    ADD RSI, RBX
    MOV RDX, 17
    Syscall
    ADD RBX, 17
    dec byte [counter]
    jnz loop1

    ; display message
    MOV RAX, 1
    MOV RDI, 1
    MOV RSI, msg2
    MOV RDX, len2
    Syscall
    MOV byte [counter], 05
    MOV RBX, 00

loop2:
    MOV RAX, 1
    MOV RDI, 1
    MOV RSI, array
    ADD RSI, RBX
    MOV RDX, 17
    Syscall
    ADD RBX, 17
    dec byte [counter]
    jnz loop2

    ; exit system call
    MOV RAX, 60
    MOV RDI, 0
    Syscall
