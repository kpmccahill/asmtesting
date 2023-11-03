global _start

section .data
    msg: db "Hello, World!", 0x0a
    len: equ $ - msg    ; equ is equate, this sets len = 2, as if it were a constant. no sapce allocated.


section .text
_start:
    mov eax, 4      ; sys_write system call
    mov ebx, 1      ; stdout file descriptor
    mov ecx, msg    ; bytes to write
    mov edx, len    ; number of bytes to write
    int 0x80        ; perform system call

    mov eax, 1      ; sys_exit system call
    mov ebx, 0      ; exit status 0
    int 0x80
    
