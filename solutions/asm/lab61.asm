;program sprawdza czy dany znak jest liczba

org 100h

;wczytuje znak
mov ah, 01h
int 21h

;czy znak jest cyfra
cmp al, 30h
je liczba
cmp al, 31h
je liczba
cmp al, 32h
je liczba
cmp al, 33h
je liczba
cmp al, 34h
je liczba
cmp al, 35h
je liczba
cmp al, 36h
je liczba
cmp al, 37h
je liczba
cmp al, 38h
je liczba
cmp al, 39h
je liczba

;znak nie jest cyfra
jne nieliczba

;wyswietl potwierdzenie
liczba: 
	mov dx, true
jmp dalej

;wyswietl zaprzeczenie
nieliczba:
	mov dx, false
jmp dalej

;wyswietl i zakoncz program
dalej:
mov ah, 09h
int 21h
	
mov ax, 4c00h
int 21h

true: db "To jest liczba",0xa,0xd,"$"
false: db "To nie jest liczba",0xaa,0xd,"$"