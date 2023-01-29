#!/usr/bin/env bash

# remove existing gb files
rm *.gb

# compile .c files into .o files
/opt/gbdk/bin/lcc -c -o main.o main.c

# compile .gb file from compiled .o files
/opt/gbdk/bin/lcc -o test.gb main.o

# remove extra files created during compilation
rm *.asm
rm *.lst
rm *.ihx
rm *.sym
rm *.o