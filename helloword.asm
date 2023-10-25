.Model Small
.Stack 100
.Data
    CRLF DB 13, 10, '$'
    ChaoTay DB 'hello$'
    ChaoTa DB 'xin chao viet nam$'
.Code
MAIN PROC
    MOV AX, @Data
    MOV DS, AX; khai bao doan data
    
    MOV AH, 9
    LEA DX, ChaoTay
    INT 21H
    
    MOV CX, 5
    LEA DX, CRLF
LAP:
    INT 21H     
    LOOP LAP
    LEA DX, ChaoTa
    INT 21H
    MOV AH, 4CH
    INT 21H
MAIN Endp
END MAIN