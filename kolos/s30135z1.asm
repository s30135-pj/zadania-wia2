org 100h

mov ah, 0Ah
mov DX, string
int 21h

mov BX, [string+1]
MOV dl, 10
MOV ah, 02h
INT 21h
mov ah, 0Ah
mov DX, string
int 21h
mov CX, [string+1]

cmp BX, CX
JE rowne
JNE nierowne
koniec:
mov ah, 00h
int 21h


rowne:
MOV dl, 10
MOV ah, 02h
INT 21h
mov AH, 09h
mov DX, sa_rowne
int 21h
jmp koniec
nierowne:
MOV dl, 10
MOV ah, 02h
INT 21h
mov AH, 09h
mov DX, nie_sa_rowne
int 21h
jmp koniec

sa_rowne db "sa rowne$"
nie_sa_rowne db "nie sa rowne$"
string db 255