[CmdletBinding()]
param (
    [Parameter()]
    $Source,
    [Parameter()]
    $Target
)

# nasm -f elf32 .\compare_printf.asm -o compare.o
# gcc -m32 .\compare.o -o test        

nasm -f elf32 .\$Source -o "$Target.o"
gcc -m32 ".\$Target.o" -o "$Target.exe"     

rm "$Target.o"
