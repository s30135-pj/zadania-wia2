org 100h

mov BL, [b]
mov AX, [a]
DIV BL
add AX, [c]
mov byte [wynik], AL

mov AH, 00h
int 21h

a dw 0x0A
b dw 0x05
c dw 0x0A
wynik dw 0