# equates to assign symbolic syscall names to their numbers - specify
#   input registers ; output registers
# ===================================================================
.eqv    PrintInt        1       # a0 = integer to print ; n/a
.eqv    PrintFloat      2       # fa0 = float to print ; n/a
.eqv    PrintDouble     3       # fa0 = double to print ; n/a
.eqv    PrintString     4       # a0 = address of string ; n/a
.eqv    ReadInt         5       # n/a ; a0 = input integer value
.eqv    ReadFloat       6       # n/a ; fa0 = input float value
.eqv    ReadDouble      7       # n/a ; fa0 = input double value
.eqv    ReadString      8       # a0 = address of buffer,
                                #   a1 = maximum characters to read ;
                                #   n/a
.eqv    Sbrk            9       # a0 = amount of memory to get;
                                #   a0 = address of memory block
.eqv    Exit            10      # n/a ; n/a
.eqv    PrintChar       11      # a0 = character to print ; n/a
.eqv    ReadChar        12      # n/a ; a0 = input character value
.eqv    PrintIntHex     34      # a0 = integer to print ; n/a
.eqv    PrintIntBinary  35      # a0 = integer to print ; n/a
.eqv    PrintIntUnsigned    36  # a0 = integer to print ; n/a
.eqv    Close           57      # a0 = file descriptor ; n/a
.eqv    Read            63      # a0 = file descriptor, a1 = address of
                                #   buffer, a2 = maximum length ;
                                #   a0 = count of characters or
                                #   -1 on error
.eqv    Write           64      # a0 = file descriptor, a1 = address of
                                #   buffer, a2 = maximum length ;
                                #   a0 = count of characters
.eqv    Open            1024    # a0 = asciz path, a1 = flags ; 
                                #   a0 = file descriptor or -1 on error
                                #   -- flags: 0-read, 1-write, 9-append
