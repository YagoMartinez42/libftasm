; ************************************************************************** ;
;                                                                            ;
;                                                        :::      ::::::::   ;
;   ft_strdup.s                                        :+:      :+:    :+:   ;
;                                                    +:+ +:+         +:+     ;
;   By: samartin <samartin@student.42madrid.com>   #+#  +:+       +#+        ;
;                                                +#+#+#+#+#+   +#+           ;
;   Created: 2026-08-11 13:43:44 by samartin          #+#    #+#             ;
;   Updated: 2026-08-11 17:27:04 by samartin         ###   ########.fr       ;
;                                                                            ;
; ************************************************************************** ;

bits 64

extern ft_strlen
extern ft_strcpy
extern malloc
global ft_strdup

section .text
; char* strdup(const char* s);
ft_strdup:
	call ft_strlen
	inc rax
	mov rdx, rdi
	mov rdi, rax
	call malloc wrt ..plt
	cmp rax, 0
    je .error
	mov rsi, rdx
	mov rdi, rax
	call ft_strcpy
	ret
.error:
	ret
