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
    str0 db  'Enter a lowercase character: $'
    str1 db  10, 13, 'The Uppercase character is : $'
;<---------------------------------------------------------------------------->
.code       ;Code Segment Directive:
                ;Program/Code is written here. Main Procedure Starts from Here.
;<---------------------------------------------------------------------------->
Driver: ;Driver Procedure Start:
    
    mov ax,@data
    mov ds,ax
 
    mov ah,9
    lea dx,str0
    int 21h
 
    mov ah,1
    int 21h
    
    mov ah,9
    lea dx,str1
    int 21h
    
    mov dl, al
    sub dl, 32

    mov ah, 2
    int 21h
    
    mov ah, 4ch
    int 21h
    
ends        ;> Program ends.
End Driver  ;> Driver Procedure End.