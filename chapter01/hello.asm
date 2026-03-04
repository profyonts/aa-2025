.data
name_prompt: 	.asciz	"enter your name: "
age_prompt:		.asciz	"enter your age: "
hello:			.asciz	"Hello, "
message:		.asciz	", on your next birthday, you will be "
.align 2
name:			.space	32
.align 2
age:			.space	4

.text
.globl main

main:
	li	a7, 4	# print string
	la	a0, name_prompt
	ecall
	
	li	a7, 8	# read string
	la	a0, name
	li	a1, 32
	ecall
	jal	chomp	# eliminate new-line character
	
	li	a7, 4	# print string
	la	a0, age_prompt
	ecall
	
	li	a7, 5	# read integer
	ecall
	
	addi	a0, a0, 1
	la	t0, age
	sw	a0, 0(t0)
	
	li	a7, 4	# print string
	la	a0, hello
	ecall
	
	la	a0, name
	ecall
	
	la	a0, message
	ecall
	
	li	a7, 1	# print integer
	#la	t0, age
	lw	a0, 0(t0)
	ecall
	
	li 	a7, 11	# print character
	li	a0, 10
	ecall
	
	li	a7, 10	# exit
	ecall

chomp:
	mv	t1, a0
	li	t2, 10
loop:
	lbu	t3, 0(t1)
	beq	t3, t2, done
	addi t1, t1, 1
	j	loop
done:
	sb	zero, 0(t1)
	ret
