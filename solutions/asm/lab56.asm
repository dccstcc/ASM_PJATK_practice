;wyswietla w calym wierszu o okreslonej wspolrzednej znak na kolorowym tle

%include "lab52.asm"

org 100h

mov bx, 0b800h
mov es, bx

mov ax, 160d; obliczanie offsetu
push ax
mov ax, [y]
push ax
pomnoz
pop bp

mov ax, 6444h; rodzaj znaku i kolor tla

mov cx, 80d
rysuj:
mov [es:bp], al; rysowanie
inc bp
mov [es:bp], ah
inc bp
loop rysuj

mov ax, 4c00h
int 21h

y: dw 000ch