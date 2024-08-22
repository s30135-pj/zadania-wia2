org 100
mov AH, 02h
mov DL, ' '
int 21h
mov AH, 01h
int 21h

mov AX, 0x4c00
int 21h