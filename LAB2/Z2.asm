org 100h

mov AH, 09h
mov DX, string
int 21h
mov AX, 0x4c00
int 21h
string db "Wladyslaw Farat$"

