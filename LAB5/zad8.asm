org 100h

mov BL, [c]
add BL, [c]
mov AX, [b]
div BL
mov BX, AX
mov AX, [a]
add AX, [a]
mul BX
mov [wynik], AX

mov AH, 00h
int 21h

a dw 0x03
b dw 0x08
c dw 0x02
wynik dw 0