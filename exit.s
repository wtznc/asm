# docker build -t asm-app . && docker run --rm asm-app

.section .data
hello_msg:
    .ascii "Hello, world!\n"
hello_len = . - hello_msg

.section .text
.globl _start
_start:
    # Write "Hello, world!" to stdout
    movl $4, %eax          # system call number (sys_write)
    movl $1, %ebx          # file descriptor 1 (stdout)
    movl $hello_msg, %ecx  # pointer to message to write
    movl $hello_len, %edx  # message length
    int $0x80              # invoke system call

    # Exit with status code 49
    movl $1, %eax          # system call number (sys_exit)
    movl $41, %ebx         # exit status
    int $0x80              # invoke system call
