org 100h

mov AX, [a]
add AX, [a]
add AX, [b]
add AX, [b]
sub AX, [c]
sub AX, [c]
mov [wynik], AX

mov AH, 00h
int 21h

a dw 0x05
b dw 0x07
c dw 0x0A
wynik dw 0