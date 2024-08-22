org 100h

mov BL, 2
mov AX, [a]
div BL
mov CX, AX
mov BL, 3
mov AX, [b]
div BL
add CX, AX
mov BL, 4
mov AX, [c]
div BL
add CX, AX
mov [wynik], CX

mov AH, 00h
int 21h

a dw 0x08
b dw 0x09
c dw 0x08

wynik dw 0