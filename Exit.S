# Setup: pacman -S risc-v qemu qemu-arch-extra
# Compile: riscv64-linux-gnu-gcc -nostdlib Exit.S -o Exit
# Execute: qemu-riscv64 Exit

.text
	.global _start

	_start:
		li a7, 93		# addi a7, x0, 93
		ecall
