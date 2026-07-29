bits 64

global ft_strcpy

section .text
; unsigned long	ft_strcpy(char *dest, const char *src)
ft_strcpy:
    mov rax, rdi
    jmp .loop
.loop:
	mov dil, sil
	cmp dil, 0
	je .end_loop
	inc dil
	inc sil
    jmp .loop
.end_loop:
    ret