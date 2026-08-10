bits 64

global ft_strcmp

section .text
; int strcmp(const char *s1, const char *s2);
ft_strcmp:
    xor rax, rax
.loop:
	mov dl, byte [rsi + rax]
	cmp byte [rdi + rax], dl
    jne .end_loop
	test dl, dl
	je .end_loop
	inc rax
    jmp .loop
.end_loop:
    sub dl, byte [rdi]
    mov rax, dl
    ret
