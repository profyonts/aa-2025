.data
answer:         .word   42

.text
.global     main
main:
        lw      a0, answer
        li      a7, 1
        ecall

#       li      a0, 10
#       li      a7, 11
#       ecall

        li      a7, 10
        ecall
