org 100h

;a * b / c = a b * c /


push word [a]
push word [b]

call mnozenie

push word [c]

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

mnozenie:
pop CX
pop BX
pop AX
mul BX
push AX
push CX
ret

a dw 2
b dw 4
c dw 4