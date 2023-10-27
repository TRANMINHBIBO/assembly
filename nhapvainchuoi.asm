.model small
.stack 100
.data
    tbao1 db 'nhap chuoi: $'
    tbao2 db 13, 10, 'chuoi da nhap la', 13, 10, '$'
    str db 100 dup('$')
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        lea dx, tbao1
        mov ah, 9
        int 21h
        
        mov ah, 10
        lea dx, str
        int 21h    
        
        mov ah, 9
        lea dx, tbao2
        int 21h
        
        lea dx, str+2
        int 21h
        
        main endp
end
