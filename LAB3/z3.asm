org 100h

mov AH, 0Ah
mov DX, string
int 21h

mov BX, [string+1]
add BL, 2
mov BH, 00
mov byte [string+BX], 3
add BL, 1
mov byte [string+BX], '$'
mov ah, 02h
mov dl, 0Ah
int 21h

mov AH, 09h
mov DX, string+2
int 21h

mov AH, 00h
int 21h

string db 255
