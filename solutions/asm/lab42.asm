; program wyswietla wczytany tekst od 4-tego znaku
; nie do konca dziala
org 100h

mov ah, 0ah
int 21h

;zmniejszenie o 4 wielkosc wczytanych danych rozmiaru stringa w buffer input
mov bx, dx
mov cx, [bx]
add bx, 3d
sub cx, 3d
mov [bx], cx 

;zmniejszenie o 4 liczby wprowadzonych znakow w buffer input
mov bx,dx
mov ax, [bx]
add bx, 4d
mov [bx], ah

mov bx, dx
add bx, 1b
mov al, [bx] ; w al jest liczba wczytanych znakow 
mov ah, 00h
add bx, ax
add bx, 1d
mov byte [bx], 0x24 ; ustawienie znaku terminacji za stringiem


;przesuniecie offsetu o 5 do przodu
mov bx, dx
add bx, 5d
mov dx, bx

mov ah, 09
int 21h

mov ax, 4c00h
int 21h