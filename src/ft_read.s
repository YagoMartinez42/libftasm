; ************************************************************************** ;
;                                                                            ;
;                                                        :::      ::::::::   ;
;   ft_read.s                                          :+:      :+:    :+:   ;
;                                                    +:+ +:+         +:+     ;
;   By: samartin <samartin@student.42madrid.com>   #+#  +:+       +#+        ;
;                                                +#+#+#+#+#+   +#+           ;
;   Created: 2026-08-11 12:03:32 by samartin          #+#    #+#             ;
;   Updated: 2026-08-11 17:26:42 by samartin         ###   ########.fr       ;
;                                                                            ;
; ************************************************************************** ;

bits 64

extern __errno_location
global ft_read

section .text
; ssize_t read(int fd, void *buf, size_t count);
ft_read:
    xor rax, rax
    syscall
    test rax, rax
    js .error
    ret
.error
	neg rax
	mov rdi, rax
	call __errno_location wrt ..plt
	mov [rax], rdi
	mov rax, -1
	ret
	