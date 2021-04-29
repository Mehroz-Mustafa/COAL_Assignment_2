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
    str  db  '**********',0dh,0ah,'$'
;<---------------------------------------------------------------------------->
.code       ;Code Segment Directive:
                ;Program/Code is written here. Main Procedure Starts from Here.
;<---------------------------------------------------------------------------->
Driver: ;Driver Procedure Start:
    
    
    mov ax, @data
    mov ds, ax
    
    mov cx, 10       
    LoopCode:
    
        lea dx, str
        mov ah, 9   
        int 21h
    
        loop LoopCode
    
    mov ah, 4ch
    int 21h

ends        ;> Program ends.
End Driver  ;> Driver Procedure End.