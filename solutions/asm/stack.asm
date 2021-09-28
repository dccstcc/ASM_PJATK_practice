org 100h

mov ax, 0aabbh
mov bx, 0ccddh
push ax
push bx
pop cx
pop dx

mov ax, 4c00h
int 21h