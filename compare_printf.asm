; trying to write the compare script but with printf to print to the std output.

extern _printf

global _main


section .text
_main:                   ; So for compiling on windows, you need to have main as a _main otherwise it no recognize.
    mov     ecx, 108
    mov     edx, ecx     ; if the number is larger we will print 0, if smaller we print 1
    mov     ebx, 100
    cmp     ebx, ecx
    jl      larger
    mov     edx, ebx
larger:
    push    edx
    push    message
    call    _printf

finish:
    mov     ebx, 1
    int     80h

section .data
message:
    db "The larger number is %d", 10, 0

