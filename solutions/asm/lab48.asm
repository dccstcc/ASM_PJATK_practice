;rysuje litere 'Z' z gwiazdek o podanej wielkosci 0-9
org 100h

mov ah,0;wczytanie cyfry od 0 do 9 jako ascii
int 16h

;konwersja ascii na cyfre
sub ax, 48d
mov ah,0
mov dx,ax

;ustawienie segmentu i offsetu
mov ax, 0b800h
mov es, ax
mov bp, 160d
push bp

mov ax, 2ah;rysowanie gwiazdki

mov cx, dx;gorna petla
gorna:
mov [es:bp], al
add bp, 2d
loop gorna

mov cx, dx ; licznik petli
mov bx, 158d
add bp, bx
srodek:
mov [es:bp], al
add bp, 160d
sub bp, 2d
loop srodek

mov cx, dx ; licznik petli


; ustawienia offsetu dla dolnej petli
pop bp
push ax

mov ax, cx
mov bx, 160d
mul bx
;shl cx, 1
;mov bx, cx
;sub ax, bx
add bp, ax

pop ax

dolna: ; dolna petla
mov [es:bp], al
add bp,2d
loop dolna

mov ax, 4c00h
int 21h