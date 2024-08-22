ORG 100h

mov AH, 02h
mov DH, 'A'

int 21h
mov AH, 02h
mov DH, 'g'

int 21h

mov AH, 00h
int 21h