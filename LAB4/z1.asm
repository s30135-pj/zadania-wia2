org 100h

mov AH, 07h
int 21h

cmp AL, 5Fh


JG wieksze
JL mniejsze
JE rowne

koniec:
mov AH, 00h
int 21h

string db "==$"

wieksze:
mov AH, 02h
mov DL, '>'
int 21h
jmp koniec
mniejsze:
mov AH, 02h
mov DL, '<'
int 21h
jmp koniec
rowne:
mov AH, 09h
mov DX, string
int 21h
jmp koniec