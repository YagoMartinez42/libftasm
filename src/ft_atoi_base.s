; ************************************************************************** ;
;                                                                            ;
;                                                        :::      ::::::::   ;
;   ft_atoi_base.s                                     :+:      :+:    :+:   ;
;                                                    +:+ +:+         +:+     ;
;   By: samartin <samartin@student.42madrid.com>   #+#  +:+       +#+        ;
;                                                +#+#+#+#+#+   +#+           ;
;   Created: 2026-08-20 18:16:20 by samartin          #+#    #+#             ;
;   Updated: 2026-08-20 18:16:20 by samartin         ###   ########.fr       ;
;                                                                            ;
; ************************************************************************** ;

bits 64

extern ft_strlen
global ft_atoi_base

section .text
;int ft_atoi_base(char* str, char* base);
ft_atoi_base:
	ret
.error:
	ret
