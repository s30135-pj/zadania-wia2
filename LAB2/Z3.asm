org 100

mov AH, 02h
mov DH, 00h
mov DL, 00h
int 10h

mov AH, 02h
mov DL, 'A'
int 21h

mov AX, 0x4c00
int 21h