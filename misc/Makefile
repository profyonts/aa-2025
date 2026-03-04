all: hello
hello: hello.o
	ld -o $@ $<
hello.o: hello_linux_x64.asm
	nasm -f elf64 $< -o $@
clean:
	rm -f hello hello.o
