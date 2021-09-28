org 100h

mov dx, buffer
mov ah, 0ah
int 21h

;przepisanie wartosci max character o 3 bajty do przodu
mov ax, [buffer]
mov bx, buffer
add bx, 3d
mov [bx], al

;przepisanie wartosci count character o 4 bajty do przodu
mov bx, buffer
add bx, 1d
mov al, [bx]
add bx, 3d
mov [bx], al

;przesuniecie adresu w dx o 3 do przodu
mov bx, dx
add bx, 5d
mov dx, bx

mov ah, 09h
int 21h

mov ax, 4c00h
int 21h

buffer: db 240d