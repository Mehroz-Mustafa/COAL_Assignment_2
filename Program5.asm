dosseg      ;DOS Segment:
                ;manages the arrangement of segments in a program.
;<---------------------------------------------------------------------------->
.model small;Model Directive: 
                ;specifies the total amount of memory the program would take
;<---------------------------------------------------------------------------->
.stack 100h  ;Stack Segment Directive: 
                ;specifies the storage for stack 
;<---------------------------------------------------------------------------->
.data       ;Data Segment Directive: 
                ;Variables are defined here.
    str0 DB 'Enter First Number : $'
    str1 DB 13,10,'Enter Second Number: $'
    str2 DB 13,10,'       $'
    str3 DB 13,10,'     + $',10,13,'$'
    str4 DB 10,13,'<===========>',10,13,'       $'
    num1 DB ?,'$'
    num2 DB ?,'$'
    sum0 DB ?,'$'
;<---------------------------------------------------------------------------->
.code       ;Code Segment Directive:
                ;Program/Code is written here. Main Procedure Starts from Here.
;<---------------------------------------------------------------------------->
Driver: ;Driver Procedure Start:
    
    mov ax, @data     
    mov ds,ax
    
    lea dx,str0         
    mov ah,9            
    int 21h 
    
    mov ah,1     
    int 21h
    mov num1,al           
    
    lea dx,str1         
    mov ah,9            
    int 21h
    
    mov ah,1
    int 21h
    mov num2,al
    
    lea dx,str2         
    mov ah,9            
    int 21h
    
    lea dx,num1         
    mov ah,9            
    int 21h
    
    lea dx,str3         
    mov ah,9            
    int 21h
    
    lea dx,num2         
    mov ah,9            
    int 21h
    
    lea dx,str4         
    mov ah,9            
    int 21h
    
    add bl,num1
    sub bl,48
    add bl,num2
    mov sum0,bl
    
    lea dx,sum0         
    mov ah,9            
    int 21h            
    
    lea dx,str4         
    mov ah,9            
    int 21h 
    
    mov ah,4ch
    int 21h            
    
ends        ;> Program ends.
End Driver  ;> Driver Procedure End.