;oblicza wyrazenie 2,a,*,a,*,a,*,3,b,*,b,*,-,c,+,4,- ; po wczytaniu a,b,c, wykorzystuje ONP 

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

; 2,a,*,a,*,a,*,3,b,*,b,*,-,c,+,4,-
mov ax, 2d
push ax

push word [a]

pomnoz

push word [a]

pomnoz

push word [a]

pomnoz

mov ax, 3d
push ax

push word [b]

pomnoz

push word [b]

pomnoz

odejmij

push word [c]

dodaj

mov ax, 4d
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