;wczytanie z klawiatury znaku i wyswietlenie go na ekranie 
;wykorzystujac rejestry

org 100h

mov ah,0
int 16h

mov bl, 01000010b; znaczniki efektow graficznych tekstu
mov cx,5; licznik powtorzen znaku
mov bh,0
mov ah,9h
int 10h

mov ax, 4c00h
int 21h

