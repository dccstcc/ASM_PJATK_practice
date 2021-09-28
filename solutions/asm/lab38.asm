org 100h

xor cx,cx ; wyzerowanie flag file attributes
mov dx,nazwa ; nazwanie pliku
mov ah,3ch ; tworzenie pliku
int 21h

mov dx,nazwa ; szukanie pliku po nazwie
mov al,02h ; tryb odczytu/zapisu pliku
mov ah,3dh ; otwarcie pliku
int 21h

mov dx,tresc ; tresc wewnatrz pliku
mov cx, 12 ; liczba bajtow do zapisania
mov bx,ax ; file handle reference
mov ah,40h ; zapis do pliku
int 21h

mov ah,3eh ; zamykanie pliku
mov bx,ax ; file handle reference
int 21h

mov ax,4c00h
int 21h

nazwa: db "lab38file",0
tresc: db "Dominik Stec"