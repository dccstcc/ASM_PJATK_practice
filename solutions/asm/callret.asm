org 100h

;;  Wywolanie funkcji w konwencji C
push word [y]   ; drugi argument
push word [x]   ; pierwszy argument
call gotoxy
add sp, 4
; koniec wywolania funkcji w konwencji C

mov dx, tekst
mov ah, 9
int 21h

mov ax, 4c00h
int 21h

;;;;;;;;;;;;;;  DANE
x: dw 30
y: dw 10

tekst db "( ^ _ ^ )$"
;;;;;;;;;;;;;;;;;;;;;;;



; funkcja przenosi kursor na zadana pozycje x oraz y, obie sa zapamietane jako int
gotoxy:
    push    bp            ; Zapamietanie rejestru BP - bedzie on nam sluzyl jako wskaznik parametrow
    mov     bp, sp        ; Skopiowanie adresu stosu do BP
    add     bp, 4         ; dodanie 4 - nie interesuje nas poprzedni BP ani adres powrotny

    pusha                 ; zapamietanie rejestrow

    ;;; Oto jak pobrac argumenty
    mov dl, [bp]          ; X    - pierwszy argument
    mov dh, [bp+2]        ; Y    - drogi argument.

    ;;; teraz dalsza czesc funkcji
    mov ah, 2
    mov bh, 0
    int 10h

    popa                  ; przywrocenie rejestrow
    pop     bp             ; ustawiamy bp z powrotem
ret                    ; wartosci zwracane sa w ax
; gotoxy


