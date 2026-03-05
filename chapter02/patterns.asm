.include    "syscalls.asm"

.data
buffer:     .space      32

.text
.global main
main:
        # read an integer from the keyboard
        li      a7, ReadInt         # syscall 5
        ecall                       # a0 is input value

        # write an integer to the console
        li      a0, 42              # a0 is output value
        li      a7, PrintInt        # syscall 1
        ecall

        # read a character from the keyboard
        li      a7, ReadChar        # syscall 12
        ecall                       # a0 is input value

        # write a character to the console
        li      a0, 'A'             # a0 is output value
        li      a7, PrintChar       # syscall 11
        ecall

        # read a string from the keyboard
        la      a0, buffer          # location to store data
        li      a1, 32              # maximum characters
        li      a7, ReadString      # syscall 8
        ecall

        # write a string to the console
        la      a0, buffer          # location of the data
        li      a7, PrintString     # syscall 4
        ecall

        # exit program with return code 0
        li      a7, Exit            # syscall 10
        ecall
