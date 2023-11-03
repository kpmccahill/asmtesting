#!/usr/bin/env bash
while getopts f:o: flag
do
    case "${flag}" in
        f) source=${OPTARG};;
        o) target=${OPTARG};;
    esac
done

# echo "$source"
# echo "$target"
nasm -f elf32 $source -o $target.o
ld -m elf_i386 $target.o -o $target

rm $target.o