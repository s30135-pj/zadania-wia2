org 100h

mov BX, [a]
mov AL, [b]
mul BX
add AX, [c]
mov [wynik], AX

mov AH, 00h
int 21h

a dw 0x05
b dw 0x07
c dw 0x0A
wynik dw 0