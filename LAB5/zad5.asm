org 100h

mov BL, [b]
mov AX, [a]
ADD BL, [c]
div BL
mov byte [wynik], AL

mov AH, 00h
int 21h

a dw 0x50
b dw 0x05
c dw 0x0A
wynik dw 0