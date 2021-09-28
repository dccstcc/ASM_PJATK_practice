;usuwanie katalogu o podanej nazwie

org 100h

mov bx,nazwa
mov dx,bx
mov ah,3ah
int 21h

mov ax,4c00h
int 21h

nazwa: db "NOWYKATA",0