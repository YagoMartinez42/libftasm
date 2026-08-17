; ************************************************************************** ;
;                                                                            ;
;                                                        :::      ::::::::   ;
;   ft_write.s                                         :+:      :+:    :+:   ;
;                                                    +:+ +:+         +:+     ;
;   By: samartin <samartin@student.42madrid.com>   #+#  +:+       +#+        ;
;                                                +#+#+#+#+#+   +#+           ;
;   Created: 2026-08-11 11:30:35 by samartin          #+#    #+#             ;
;   Updated: 2026-08-11 17:28:05 by samartin         ###   ########.fr       ;
;                                                                            ;
; ************************************************************************** ;

bits 64

extern __errno_location
global ft_write

section .text
; ssize_t write(int fd, const void* buf, size_t count);
ft_write:
    mov rax, 1
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
	