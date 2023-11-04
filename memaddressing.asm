global _main
section .data
    addr db "yellow"

section .text
_main:
    mov eax, 4      ; sys_write system call
    mov ebx, 1      ; stdout file desriptor
    mov ecx, addr   ; bytes to write.
    mov edx, 6      ; number of bytes to write
    int 0x80        ; syscall
    mov eax, 1      ; sys_exit call
    mov ebx, 0      ; return 0 from program
    int 0x80