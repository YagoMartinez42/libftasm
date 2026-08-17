; ************************************************************************** ;
;                                                                            ;
;                                                        :::      ::::::::   ;
;   ft_strcmp.s                                        :+:      :+:    :+:   ;
;                                                    +:+ +:+         +:+     ;
;   By: samartin <samartin@student.42madrid.com>   #+#  +:+       +#+        ;
;                                                +#+#+#+#+#+   +#+           ;
;   Created: 2026-08-11 09:57:58 by samartin          #+#    #+#             ;
;   Updated: 2026-08-11 14:09:58 by samartin         ###   ########.fr       ;
;                                                                            ;
; ************************************************************************** ;

bits 64

global ft_strcmp

section .text
; int strcmp(const char* s1, const char* s2);
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
    sub dl, byte [rdi + rax]
    mov rax, dl
    ret
