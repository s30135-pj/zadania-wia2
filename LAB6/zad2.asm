org 100h

;2a + 2b - 2c = a a + b b + + c c + -


push word [a]
push word [a]

call dodawanie

push word [b]
push word [b]

call dodawanie

call dodawanie

push word [c]
push word [c]

call dodawanie

call odejmowanie

mov AH, 00h
int 21h

dodawanie: 
pop CX
pop AX
pop BX
add AX, BX
push AX
push CX
ret

odejmowanie:
pop CX
pop BX
pop AX
sub AX, BX
push AX
push CX
ret

a dw 2
b dw 3
c dw 2