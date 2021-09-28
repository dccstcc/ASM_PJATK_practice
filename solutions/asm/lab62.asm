;wczutuje i wypisuje znaki na konsoli do momentu wcisniecia klawisza enter
org 100h

return:
mov ah, 01h
int 21h


cmp al, 0dh
je koniec
jne return

koniec:
mov ax, 4c00h
int 21h