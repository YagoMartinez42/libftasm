/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlen.s                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: samartin <samartin@student.42madrid.com>   #+#  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2026-07-25 18:01:20 by samartin          #+#    #+#             */
/*   Updated: 2026-08-06 10:02:20 by samartin         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

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