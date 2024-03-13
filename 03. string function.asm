
.model small
.stack 100h  

.data   
m db 'I Love Bangladesh $'   ; $ sign means access all data before it

.code

main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9           ; for string output
    lea dx, m           ; lea dx  use for string 
    int 21h  
    
     
   exit:
   mov ah, 4ch
   int 21h
   main endp  
end main
