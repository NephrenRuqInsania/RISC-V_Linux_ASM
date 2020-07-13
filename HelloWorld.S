# Setup: pacman -S risc-v qemu qemu-arch-extra
# Compile: riscv64-linux-gnu-gcc -nostdlib HelloWorld.S -o HelloWorld
# Execute: qemu-riscv64 HelloWorld

.text
	.global _start

	_start:
		li a0, 1		# addi a0, x0, 1
		la a1, str
		li a2, 13		# addi a2, x0, 13
		li a7, 64		# addi a7, x0, 64
		ecall

		li a7, 93		# addi a7, x0, 93
		ecall

.data
	str: .ascii "Hello world!\n"
