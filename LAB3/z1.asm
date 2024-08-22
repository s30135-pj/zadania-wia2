org 100h

mov AH, 0Ah
mov DX, string
int 21h

mov ah, 02h
mov dl, 0Ah
int 21h

mov AH, 02h
mov DX, [string+2]
int 21h

mov AH, 00h
int 21h

string db 255