/*
Note:
 -->  myByte db 65     ; Define a byte with value 65 (ASCII 'A')
 -->  myWord dw 1234   ; Define a word with value 1234
 -->  myDoubleword dd 12345678h   ; Define a doubleword with value 12345678h

*/




.model small
.stack 100h
.data      // call data segment for declear variable and initiall data
// Declear variale  --->  msg, msg1
// db = define byte (small data store)
// dw = define word (big data store)

msg db 3       // variable e 3 store kore dilam
msg1 db ?      // ? means unkhow value nibo

newline db 13, 10, '$'  ; Newline characters for formatting 

.code 
main proc 
    ; for initial data access in main process
    mov ax, @data    
    mov ds, ax
                  
    ; print msg1
    mov ah, 2
    mov bl, msg1
    add bl, 48  
    mov dl, bl
    int 21h  

    ;print newline
    mov ah, 2 
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h  

    ; Read a character from input
    mov ah, 1
    int 21h
    mov msg, al   
    
   ;print newline
    mov ah, 2 
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h  
    
    ; Add msg1 to msg 
    mov al, msg1
    add msg, al
    
    ;print newline
    mov ah, 2 
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h  
    
    ; print the result
    mov ah, 2
    mov dl, msg
    int 21h
    
   exit:
   mov ah, 4ch
   int 21h
   main endp  
end main

