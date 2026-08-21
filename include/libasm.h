/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: samartin <samartin@student.42madrid.com>   #+#  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2026-07-22 17:01:20 by samartin          #+#    #+#             */
/*   Updated: 2026-08-11 17:30:20 by samartin         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

int				ft_atoi_base(char* str, char* base);
long			ft_read(int fd, void* buf, unsigned long count);
int				ft_strcmp(const char* s1, const char* s2);
char*			ft_strcpy(char* dest, const char* src);
char*			ft_strdup(const char* s);
unsigned long	ft_strlen(const char* s);
long			ft_write(int fd, const void* buf, unsigned long count);

#endif