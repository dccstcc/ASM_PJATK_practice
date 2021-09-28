;tworzy nowy katalog o nazwie "nowykatalog"
org 100h

mov bx, nazwa
mov dx,bx
mov ah,39h
int 21h

mov ax,4c00h
int 21h

nazwa: db "nowykatalog",0

