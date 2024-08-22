org 100h

;2a * b + 2c = a a + b * c c + + 


push word [a]
push word [a]

call dodawanie

push word [b]

call mnozenie

push word [c]
push word [c]
call dodawanie
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