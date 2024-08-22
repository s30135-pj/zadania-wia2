org 100h

mov BL, [c]
mov AX, [b]
div BL
mov BX, AX
mov AX, [a]
mul BX

mov [wynik], AX

mov AH, 00h
int 21h

a dw 0x50
b dw 0x0A
c dw 0x05
wynik dw 0