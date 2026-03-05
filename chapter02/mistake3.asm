.data
prompt: .asciz  "enter your name: "
input:  .space  8       # a bit short?

.text
.global     main
main:
        la      a0, prompt
        li      a7, 4
        ecall

        la      a0, input
        li      a1, 8
        li      a7, 8
        ecall

        li      a7, 4
        ecall

        li      a0, 10
        li      a7, 11
        ecall

        li      a7, 10
        ecall
