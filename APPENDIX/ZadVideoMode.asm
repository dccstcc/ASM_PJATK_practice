org 100h
	
	mov ah, [writeString]
	mov dx, firstMsg
	int 21h
	
	xor ah, ah
	int 16h
	
	xor ah, ah
	mov al, [videoMode]
	int 10h

mov ax, [exit]
int 21h

exit: dw 4c00h
writeString: db 09h
videoMode: db 12h ; 640x480 x16

firstMsg: db "Press any key to change video mode.$"