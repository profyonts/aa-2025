.data
first:      .asciz      "enter first integer: "
second:     .asciz      "enter second integer: "
sum:        .asciz      "their sum is "
difference: .asciz      "their difference is "
product:    .asciz      "their product is "
quotient:   .asciz      "their quotient is "

.text
.globl  main
main:
    la      a0, first
    li      a7, 4       # print string
    ecall

    li      a7, 5       # read integer
    ecall
    mv      a3, a0      # remember value

    la      a0, second
    li      a7, 4       # print string
    ecall

    li      a7, 5       # read integer
    ecall
    mv      a4, a0      # remember value

    la      a0, sum     # output 'sum'
    li      a7, 4
    ecall

    add     a0, a3, a4  # compute and print sum
    li      a7, 1
    ecall

    li      a0, 10      # print newline
    li      a7, 11
    ecall

    la      a0, difference  # output 'difference'
    li      a7, 4
    ecall

    sub     a0, a3, a4  # compute and print difference
    li      a7, 1
    ecall

    li      a0, 10      # print newline
    li      a7, 11
    ecall

    la      a0, product # output 'product'
    li      a7, 4
    ecall

    mul     a0, a3, a4  # compute and print product
    li      a7, 1
    ecall

    li      a0, 10      # print newline
    li      a7, 11
    ecall

    la      a0, quotient # output 'quotient'
    li      a7, 4
    ecall

    div     a0, a3, a4  # compute and print quotient
    li      a7, 1
    ecall

    li      a0, 10      # print newline
    li      a7, 11
    ecall

    li      a7, 10      # exit program
    ecall
