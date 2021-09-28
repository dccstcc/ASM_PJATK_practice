
mov ax, 0b800h
mov ds, ax 
; mov ah, 2
; mov dl, [es:0]
; int 21h

; mov byte [es:0], 00001101b ; znak
; mov byte [es:1], 10100100b

mov word [ds:(13*80+40)*2], 1010010000001101b


mov ax, 4c00h
int 21h
