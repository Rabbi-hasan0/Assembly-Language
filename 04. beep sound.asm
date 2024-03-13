.model small
.stack 100h
.data
n dw ?
nn dw ?
     
     
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 1
    int 21h
    mov n, al
    
    mov ah, 2
    mov dl, 10  
    int 21h
    mov dl, 13
    int 21h
    
    mov ah, 1
    int 21h
    mov nn, al
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    
    mov bl, nn
    add n, bl
    
    mov ah, 2
    mov dl, n
    int 21h
    
    mov ah, 2
    mov dl, 07
    int 21h
    
   exit:
   mov ah, 4ch
   int 21h
   main endp
end main
