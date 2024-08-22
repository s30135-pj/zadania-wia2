org 100h

;a / (b + c) = a b c + /


push word [a]
push word [b]



push word [c]

call dodawanie
call dzielenie

mov AH, 00h
int 21h

dzielenie: 
pop CX
pop BX
pop AX
div BL
push AX
push CX
ret

dodawanie: 
pop CX
pop AX
pop BX
add AX, BX
push AX
push CX
ret

a dw 4
b dw 2
c dw 2