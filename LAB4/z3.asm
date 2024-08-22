org 100h

petla:
mov AH, 01h
int 21h

cmp AL, 'Q'
JE koniec
JNE petla

koniec:
mov AH, 00h
int 21h