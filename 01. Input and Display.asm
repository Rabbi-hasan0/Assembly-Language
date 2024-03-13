
.model small
.stack 100h
.code

main proc            // main process start
    mov ah,1         // for int input function --> 1
    int 21h          // call input function and execute
    mov bl,al        // initially all data save in al register so here store al data in bl register
    
    mov ah,1         // again input
    int 21h
    mov bh,al
    
    mov ah,2         // for int data disply function --> 2
    mov dl,bl        // in dl register value assaign data of bl
    int 21h          // now execute
    
    mov ah,2         // again display
    mov dl,bh
    int 21h
    
    
    exit:             // exit level and its given this text file exit
    mov ah,4ch        
    int 21h
    main endp     
end main
    
    
    
