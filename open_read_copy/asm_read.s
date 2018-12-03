        .globl read
        .type read,@function
read:
        pushl %ebp
        movl %esp,%ebp
        movl $3,%eax
        movl 8(%ebp),%ebx
        movl 12(%ebp),%ecx
        movl 16(%ebp),%edx
        int $0x80

        cmpl $0 , %eax
        jle end_loop
end_loop:
        pop %ebp
        ret
        .globl write
        .type write,@function
write:
        pushl %ebp
        movl %esp,%ebp
        movl $4,%eax
        movl 8(%ebp),%ebx
        movl 12(%ebp),%ecx
        movl 16(%ebp),%edx
        int $0x80
        pop %ebp
        ret

         .globl close
        .type close,@function
close:
        pushl %ebp
        movl %esp,%ebp
        movl $6,%eax
        movl 8(%ebp),%ebx
        int $0x80
        pop %ebp
        ret
