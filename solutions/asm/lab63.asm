org 100h

return:
mov ah, 00h; wczytaj znak
int 16h

cmp al, 0dh; czy enter?
je hitenter

mov [znak], al

mov ah, 09h; wypisz znak
mov dx, znak
int 21h
inc byte [znak]
jmp return


;cmp al, "dominik"
;je fun
;jne return

hitenter:
cmp word [znak], 6473h
jne koniec
je fun
fun:
mov ah, 09h
mov dx, funny
int 21h
jmp koniec


koniec:
mov ax, 4c00h
int 21h

znak db "?","$"
funny: db 03h,"$"