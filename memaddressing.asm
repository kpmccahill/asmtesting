global _main
extern _printf
section .data
    addr db "yellow"

section .text
_main:               ;; noticed some syntax stuff. the windows version needs _ prefix, linux no.
    mov [addr], byte'H'
    mov [addr+5], byte'!'
    mov eax, 4      ; sys_write system call
    mov ebx, 1      ; stdout file desriptor
    mov ecx, addr   ; bytes to write
    push ecx
    call _printf

    mov eax, 1      ; sys_exit call
    mov ebx, 0      ; return 0 from program
    int 0x80

    ;;; so this file does work on linux, but needs C stuff added to make it work on windows.