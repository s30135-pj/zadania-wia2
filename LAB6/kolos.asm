org 100h




mov ax, 0x1ad0
mov bx, 0x0020
add al, bl

mov ax, 0x1ad0
mov bx, 0x0020
mul bl

mov ah, 0xFF
mov bl, 0x22
sub ah, bl
mov AH, 00h
int 21h