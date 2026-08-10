# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: samartin <samartin@student.42madrid.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/07/25 18:01:20 by samartin          #+#    #+#              #
#    Updated: 2026/08/10 19:01:48 by samartin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

bits 64

global ft_strcpy

section .text
; unsigned long	ft_strcpy(char *dest, const char *src)
ft_strcpy:
	xor rcx, rcx
    mov rax, rdi
.loop:
	mov byte dl, [rsi + rcx]
	mov byte [rdi + rcx], dl
	test dl, dl
	je .end_loop
	inc rcx
    jmp .loop
.end_loop:
    ret