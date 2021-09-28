;wypisz 100 razy swoje imie i nazwisko w petli

org 100h

mov dx, tekst  ; ustawienie adresu do wypisywanego tekstu
mov ah,9 ; wywolanie funkcji wypisujacej na keran

mov cx, 100 ; licznik petli
wypisz: ; wywolanie przerwania w petli
int 21h
loop wypisz ; koniec petli

mov ax, 4c00h
int 21h

tekst: db "Dominik Stec",0xa,0xd,"$" ; dane do wypisania
