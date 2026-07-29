bits 64

global ft_strcpy

section .text
; unsigned long	ft_strcpy(char *dest, const char *src)
ft_strcpy:
    mov rax, rdi
    jmp .loop
.loop:
	mov byte [rdi], [rsi]
	cmp byte [rdi], 0
	je .end_loop
	inc rdi
	inc rsi
    jmp .loop
.end_loop:
    ret