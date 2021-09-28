;wczytanie z klawiatury znaku i wyswietlenie go od 5 znaku na ekranie 
;wykorzystujac pamiec i przerwanie 21h

;nie dziala

org 100h

mov ax,dx
add ax,34
mov [buffer],ax
mov ah,0xa
int 21h

mov dx, [buffer]
mov ah,09h
int 21h

mov ax, 4c00h
int 21h

buffer: db "null",0ah,0dh,"$"
