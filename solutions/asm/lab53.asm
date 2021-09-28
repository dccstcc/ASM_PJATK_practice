;oblicza wyrazenie 2a^3 - 3b^2 + c - 4, po wczytaniu a,b,c, bez ONP 

%include "lab52.asm"

org 100h

mov ah,0;wczytaj a
int 16h
mov [a], al
sub word [a], 48d

mov ah,0;wczytaj b
int 16h
mov [b], al
sub word [b], 48d

mov ah,0;wczytaj c
int 16h
mov [c], al
sub word [c], 48d

push word [a];a*a*a
push word [a]
pomnoz
push word [a]

mov ax, 2d;a*a*a*2
push ax
pomnoz

push word [b];b*b
push word [b]
pomnoz

mov ax, 3d;b*b*3
push ax
pomnoz

odejmij;(a)-(b)

mov ax, [c];+c
push ax
dodaj

mov ax, 4d;-4
push ax
odejmij

pop dx;wyswietl wynik
mov ah, 02h
int 21h

mov ax,4c00h
int 21h

a: dw 0
b: dw 0
c: dw 0