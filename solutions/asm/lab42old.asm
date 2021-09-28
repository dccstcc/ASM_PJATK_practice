; wczytuje string do bufora i wyswietla od 4 znaku
org 100h

mov dx, buffer
mov ah, 0ah ;wczytuje tekst do bufora
int 21h

mov bx, [buffer+1] ;ustawienie na koncu bufora znaku terminacji $
add [buffer], bl
add byte [buffer], 1
mov byte [buffer], 0x24

;przepisanie wartosci maksymalnej bufora na trzecia pozycje bufora
mov ax, [buffer] 
mov bx, buffer
add bx, 3
mov [bx], ax

;przepisanie liczby wczytanych znakow na czwarta pozycje bufora
mov bx, buffer
add bx, 1
mov ax, [bx]
add bx, 3
mov [bx], ax

mov ah, 09h ;wypisywanie tekstu
int 21h

mov ax,4c00h
int 21h

buffer: db 240d
substring: db 240d