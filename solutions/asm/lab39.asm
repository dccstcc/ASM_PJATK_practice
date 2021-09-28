org 100h

mov ah,0h ;zmiana trybu graficznego
mov al,11h ;640x480, 1 bit na pixel czyli czarno-bialy
int 10h

mov ax,4c00h
int 21h