org 100h

mov AH, 07h
int 21h

cmp AL, 5Ah


JG male
JLE duze

koniec:
mov AH, 00h
int 21h

mala_litera db "mala litera$"
duza_litera db "wielka litera$"
blad db "error$"

male:
cmp AL, 7Ah
jle mniejsze
jg inne

duze:
cmp AL, 41H
jge wieksze
jl inne

wieksze:
mov AH, 02h
mov DH, 00h
mov DL, 00h
int 10h
mov AH, 09h
mov DX, duza_litera
int 21h
jmp koniec

mniejsze:
mov AH, 02h
mov DH, 12h
mov DL, 40h
int 10h
mov AH, 09h
mov DX, mala_litera
int 21h
jmp koniec
inne:
mov AH, 09h
mov DX, blad
int 21h
jmp koniec