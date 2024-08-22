org 100h

;a * b + c = a b * c +


push word [a]
push word [b]

pop AX
pop BX
mul BX
push AX

push word [c]

pop AX
pop BX
add AX, BX

mov AH, 00h
int 21h

a dw 2
b dw 4
c dw 6