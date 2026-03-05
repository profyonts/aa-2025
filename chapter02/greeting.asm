.data
prompt: .asciz  "Enter your name: "
msg:    .asciz  "Hello, "
name:   .space  8

.text
.global main
main:
        la      a0, prompt
        li      a7, 4
        ecall

        la      a0, name
        li      a1, 8       # maximum length
        li      a7, 8
        ecall

        la      a0, msg
        li      a7, 4
        ecall

        la      a0, name
        ecall

        li      a0, 10
        li      a7, 11
        ecall

        li      a7, 10
        ecall
