; wyswietla kolorowy pasek z literami 'Q' wewnatrz
org 100h

;ustawienie segmentu i offsetu
mov ax, 0b800h
mov es, ax
mov ax, 160d
mov bp, ax

mov ax, 0151h ; starter zmiany kolorow ze znakiem 'Q'

mov cx, 16d ; wyswietlenie wszystkich kolorow
petla:
mov [es:bp], al
inc bp
mov [es:bp], ah
add ah, 10h
inc bp
loop petla

mov ax, 4c00h
int 21h