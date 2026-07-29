bits 64

global ft_strlen

section .text
; unsigned long	ft_strlen(const char* s);
ft_strlen:
    xor rax, rax
    jmp .loop
.loop:
    cmp [dil + rax], 0
    je .end_loop
    inc rax
    jmp .loop
.end_loop:
    ret