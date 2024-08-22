org 100

mov AH, 02h
mov DH, 12h
mov DL, 40h
int 10h

mov AH, 02h
mov DL, 'C'
int 21h

mov AX, 0x4c00
int 21h