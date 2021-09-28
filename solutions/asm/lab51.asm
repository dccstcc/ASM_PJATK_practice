org 100h

%macro dodaj 0
pop ax
pop bx
add ax,bx
push bx
%endmacro

%macro odejmij 0
pop ax
pop bx
sub ax,bx
push ax
%endmacro

%macro pomnoz 0
pop ax
pop bx
mul bx
push ax
%endmacro

%macro podziel 0
pop ax
pop bx
div bx
push ax
%endmacro

mov ax, 4c00h
int 21h