; jak dziala na rejestr dx dzielnie z reszta i przepelnienie rejestru przy mnozeniu
org 100h

mov ax, 0cccch
mov bx, 0ddddh
mov dx, 0
div bx

mov ax,4c00h
int 21h
