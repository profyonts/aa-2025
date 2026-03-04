.data
prompt:     .asciz  "enter an uppercase letter: "
message:    .asciz   " lowercased is "

.text
.globl      main
main:
    la      a0, prompt
    li      a7, 4
    ecall

    li      a7, 12      # read character
    ecall
    mv      a3, a0      # remember character
    addi    a3, a3, 32  # uppercase letter

    li      a7, 11      # print character in a0
    ecall

    la      a0, message # print message
    li      a7, 4
    ecall

    mv      a0, a3      # get uppercased letter
    li      a7, 11      # print character in a0
    ecall

    li      a0, 10      # print a newline
    li      a7, 11
    ecall

    li      a7, 10      # exit program
    ecall