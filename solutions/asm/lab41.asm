; wczytuje dane do bufora i wypisuje na ekran
org 100h

mov dx, buffer ; wczytywanie stringa do bufora
mov ah, 0ah
int 21h

; dodawanie znaku $ na koniec stringa
mov bx, [buffer+1]
add [buffer], bl
add byte [buffer], 1
mov byte [buffer], 0x24

mov dx, buffer ; wypisywanie 
mov ah, 09h
int 21h

mov ax,4c00h
int 21h

buffer: db 240