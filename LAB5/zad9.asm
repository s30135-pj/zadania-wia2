org 100h

mov BL, [c]
mov AX, [a]
div BL
mov BX, AX
add BX, [b]
mov AX, [a]
mul BX
mov [wynik], AX

mov AH, 00h
int 21h

a dw 0x08
b dw 0x08
c dw 0x02
wynik dw 0