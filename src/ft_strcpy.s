bits 64

global ft_strcpy

section .text
; unsigned long	ft_strcpy(char *dest, const char *src)
ft_strcpy:
    mov rax, rdi
.loop:
	movb dl, [rsi]
	movb [rdi], dl
	test dl, dl
	je .end_loop
	inc rdi
	inc rsi
    jmp .loop
.end_loop:
    ret