org 100h

;a^2 + 2b + c = a a * b b + + c + 


push word [a]
push word [a]

call mnozenie

push word [b]
push word [b]

call dodawanie

call dodawanie

push word [c]

call dodawanie

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

mnozenie:
pop CX
pop BX
pop AX
mul BX
push AX
push CX
ret

a dw 2
b dw 3
c dw 2