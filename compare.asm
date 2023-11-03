global _start

section .text
_start:
    mov     ecx, 98    ; set ecx to 99
    mov     ebx, 42     ; exit status to 42
    mov     eax, 1      ; sys_exit system call
    cmp     ecx, 100    ; compare ecx 100
    jl      skip
    mov     ebx, 13     ; exit to 13 if greater than


skip:
    int     80h        ; exit
