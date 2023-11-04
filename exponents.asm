extern _printf
global _main


section .text
_main:
    mov     ebx, 1      ; start @ 1
    mov     ecx, 4      ; number of iterations
    mov     edx, 0

label:
    add     ebx, ebx    ; ebx += ebx
    dec     ecx         ; ecx -= 1 || decrement, faster than sub
    cmp     ecx, 0      ; compare ecx w/ 0    
    jg      label       ; jump to label if greater.
    mov     eax, 1      ; sys exit syscall

    mov     edx, ebx    ; okay so when I was pushing and trying to print in the middle of the loop
    push    edx         ; i couldnt. I think it's bc of the stack.
    push    msg
    call    _printf
    ; pop     eax         ; Okay so basically i think it's because when you push to the stack, you clear
    ; pop     eax         ; the register you push from.
    ; mov     edx, ebx
    ; push    edx
    ; push    msg
    ; call    _printf

    int 0x80            ; exit

section .data
msg:    db "Number: %d", 10, 0