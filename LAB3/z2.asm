org 100h

mov AH, 09h
mov DX, string
int 21h

mov ah, 02h
mov dl, 0Ah
int 21h

mov byte [string+3], '$'

mov AH, 09h
mov DX, string
int 21h


mov AH, 00h
int 21h

string db "Epstein didn't kill himself$"