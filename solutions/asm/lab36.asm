;wypisanie na srodku ekranu imienia i nazwiska

org 100h


mov dl,35;pozycja w kolumnach
mov dh,10; pozycja w wierszach
mov bh,0;page number
mov ah,02h;funkcja przerwania
int 10h

;wypisywanie tekstu
mov dx, tekst
mov ah,9
int 21h

mov ax,4c00h
int 21h

tekst: db "Dominik Stec",0xa,0xd,"$"  ;tekst do wypisania