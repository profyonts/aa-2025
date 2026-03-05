.data
prompt: .asciz  "enter some text: "
input:  .space  32

.text
.global     main
main:
        la      a0, prompt
        li      a7, 4
        ecall

        la      a1, input       # oops!
        li      a0, 32          # oops!
        li      a7, 8               
        ecall

        li      a7, 4
        ecall

        li      a7, 10
        ecall
