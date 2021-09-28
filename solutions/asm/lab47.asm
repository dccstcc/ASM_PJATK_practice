;caly ekran jest czerwony a tekst jest zielony, modyfikacja poprzedniego zadania
org 100h

;ustawienie segmentu i offsetu
mov ax, 0b800h
mov es, ax
xor bp, bp

add bp, 160d;offset

mov ax, 4200h;czerwony prostokat
;mov [es:bp], al
inc bp
mov [es:bp], ah

mov cx, 3840d ;licznik petli / pokrycie ekranu
petla:
;inc bp
;mov [es:bp], al
;inc bp
add bp, 2d
mov [es:bp], ah
loop petla

mov ax, 4c00h
int 21h