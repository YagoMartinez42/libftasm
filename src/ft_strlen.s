/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlen.s                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: samartin <samartin@student.42madrid.com>   #+#  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2026-07-22 18:01:20 by samartin          #+#    #+#             */
/*   Updated: 2026-08-06 10:01:20 by samartin         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

bits 64

global ft_strlen

section .text
; unsigned long	ft_strlen(const char* s);
ft_strlen:
    xor rax, rax
.loop:
    cmp byte [rdi + rax], 0
    je .end_loop
    inc rax
    jmp .loop
.end_loop:
    ret