.data
life:       .ascii  "The answer to the ultimate question of life, the"
cont:       .asciz  " universe and everything is 42."

.text
.global     main
main:
        la      a0, life
        li      a7, 1
        ecall

        li      a0, 10          # newline
        li      a7, 11
        ecall

        li      a7, 10
        ecall
