    org     07c00h  ;
    mov     ax, cs
    mov     ds, ax
    mov     es, ax
    call    DispStr ;
    jmp     $       ;

DispStr:
    mov     ax, BootMessage
    mov     bp, ax      ;
    mov     cx, 16      ;
    mov     ax, 01301h  ;
    mov     bx, 000ch   ;
    mov     dl, 0
    int     10h         ; 0h号中断
    ret

BootMessage:                db      "I`m xihe system."
times       510-($-$$)      db      0   ;   填充剩下空间
dw          0xaa55                      ;   结束标志
