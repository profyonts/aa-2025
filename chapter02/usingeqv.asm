.eqv        PrintString     4
.eqv        Exit            10
.eqv        PrintChar       11

.data
msg:        .asciz      "Hello, world"

.text
.global     main
main:
        la      a0, msg
        li      a7, PrintString
        ecall

        li      a0, 10          # newline
        li      a7, PrintChar
        ecall

        li      a7, Exit
        ecall
