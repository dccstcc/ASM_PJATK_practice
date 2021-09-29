org 100h

	mov ah, [writeString]
	mov dx, firstMsg
	int 21h
	
	xor ah, ah
	int 16h
	
	mov [character], al ; wrzucenie znaku z AL do adresu etykiety. 
	
	mov ah, [writeString]
	mov dx, secondMSg
	int 21h
	
	mov ah, [writeCharacter]
	int 10h

mov ax, [exit]
int 21h

exit: dw 4c00h
writeString: db 09h
writeCharacter: db 0eh

character: db 0

firstMsg: db 22h, "Zadanie przedwstepne", 22h, " with variable.", 0ah, "Press any key.$"
secondMSg: db 0ah, "Pressed key: $"