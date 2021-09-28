;wyswietla znak na ekranie w miejscu okreslonym przez wspolrzedne x i y
;nie dziala przesuniecie wzdluz osi x
%include "lab52.asm"

org 100h

mov ax, [y]
push ax; wzor (y*80+x)*2 w ONP
mov ax, 80d
push ax
pomnoz
mov ax, [x]
push ax
dodaj
mov ax, 2d
push ax
pomnoz
pop ax; offset pamieci trybu tekstowego

mov bx, 0x23; ASCII znak '#' 0x23, serduszko u+2665 lub 9829d 

mov dx, 0b800h ; ustawienie wspolrzednych
mov es, dx
mov bp, ax

mov byte [es:bp], bl ;rysuje znak

mov ax, 4c00h
int 21h

x: db 24d
y: db 12d
