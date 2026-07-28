/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: samartin <samartin@student.42madrid.com>   #+#  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2026-07-22 17:01:20 by samartin          #+#    #+#             */
/*   Updated: 2026-07-22 17:01:20 by samartin         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

unsigned long	ft_strlen(const char* s);
char*			ft_strcpy(char* dest, const char* src);
int				ft_strcmp(const char* s1, const char* s2);
long			ft_read(int fd, void* buf, unsigned long count);
long			ft_write(int fd, const void* buf, unsigned long count);
char*			ft_strdup(const char* s);

#endif