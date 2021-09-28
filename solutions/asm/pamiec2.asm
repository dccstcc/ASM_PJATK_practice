org 100h

mov AH,09h
mov AL,'x'
mov BH,0
mov BL,0f0h
mov CX,[powtorzen]
int 10h
mov AX, 4c00h
int 21h
powtorzen db 10,0

