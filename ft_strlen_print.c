/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlen_print.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: muhakose <muhakose@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/06 12:11:05 by muhakose          #+#    #+#             */
/*   Updated: 2023/12/06 11:46:46 by muhakose         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strlen_print(const char *s)
{
	size_t	x;

	x = 0;
	while (s[x] != '\0')
		x++;
	return (x);
}

/* int main()
{
 	char	str[] = "Life is good.";
 	int		result = ft_strlen(str);
 	printf("The length of the string is %d.\n", result);
	return (0);
} */
