#!/usr/bin/env bash
while getopts s:t flag
do
    case "${flag}" in
        s) source=${OPTARG};;
        t) target=${OPTARG};;
    esac
done

nasm -f $source.asm -o $target.o
ld -m elf_i386 $target.o -o $target