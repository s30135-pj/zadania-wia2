org 100h

mov AX, [a]
mul AX
add AX, [b]
add AX, [b]
add AX, [c]
mov [wynik], AX

mov AH, 00h
int 21h

a dw 0x05
b dw 0x07
c dw 0x0A
wynik dw 0