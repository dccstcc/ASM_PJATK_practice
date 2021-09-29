org 100h

	mov ah, [writeString]
	mov dx, firstMsg
	int 21h
	mov ah, [readString]
	mov dx, _text_
	int 21h

	mov ah, [writeString]
	mov dx, secondMsg
	int 21h
	
	; obliczenia :D
	movzx si, byte [_text_ + 1] ; liczba wczytanych znaków
	mov dx, _text_ + 2 ; napis
	add si, dx, ; si = adres napisu + liczba znaków
	mov byte [si], '$' ; na koniec znak terminatora
	
	mov dx, _text_ + 7 ; napis + 5 znaków
	mov ah, [writeString] ; wyświetlanie się psuje gdy znaków < 5 zastosować ifa?
	int 21h
	
mov ax, [exit]
int 21h

exit: dw 4c00h
writeString: db 09h
readString: db 0ah

_text_:
	db 255 
	db 0
	times 255 db 0 
	
firstMsg: db "Enter string(max. 255 characters): $"
secondMsg: db 0ah, "Entered string + 5 characters: $"