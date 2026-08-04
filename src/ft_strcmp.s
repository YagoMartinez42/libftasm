bits 64

global ft_strcmp

section .text
; int strcmp(const char *s1, const char *s2);
ft_strcmp:
.loop:
	movb dl, [rsi]
	cmpb [rdi], dl
    jne .end_loop
	test dl, dl
	je .end_loop
	inc rdi
	inc rsi
    jmp .loop
.end_loop:
    mov rax, [rdi] - dl
    ret