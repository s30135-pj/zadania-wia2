org 100h
mov BL, 0x00

petla:
mov AH, 01h
int 21h

cmp AL, 0Dh
je petla
cmp AL, 'Q'
JE koniec

add BL, 1
JNE petla

koniec:
MOV dl, 10
MOV ah, 02h
INT 21h
add BL, 0x30
mov Ah, 02h
mov dl, BL
int 21h
mov AH, 00h
int 21h