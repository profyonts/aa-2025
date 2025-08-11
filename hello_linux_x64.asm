global _start
section .text
_start:
    mov     rax, 1        ; write
    mov     rdi, 1        ; fd = stdout
    lea     rsi, [rel msg]
    mov     rdx, msglen
    syscall

    mov     rax, 60       ; exit
    xor     rdi, rdi
    syscall

section .data
msg:    db "Hello, x86-64 on Linux!", 10
msglen: equ $ - msg
