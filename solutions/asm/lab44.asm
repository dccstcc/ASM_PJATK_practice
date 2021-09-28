org 100h

mov ax, 0b800h ; ustawienie segmentu trybu tekstowego vga
mov es, ax
mov di, 1840d ; przygotowanie pierwszego offsetu

;pierwszy znak
mov ax, 7241h
mov [es:di], al
add di,1d
mov [es:di], ah

;drugi znak
add di, 1d
mov ax, 7442h
mov [es:di], al
add di,1d
mov [es:di], ah

;trzeci znak
add di, 159d
mov ax, 7043h
mov [es:di], al
inc di
mov [es:di], ah

mov ax, 4c00h
int 21h