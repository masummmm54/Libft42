# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: muhakose <muhakose@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/07 12:11:50 by muhakose          #+#    #+#              #
#    Updated: 2023/12/06 12:05:32 by muhakose         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


.SILENT:

COLOUR_GREEN = \033[0;32m
COLOUR_RED = \033[0;31m
COLOUR_BLUE = \033[0;34m
COLOUR_END = \033[0m

CFLAGS	= -Wall -Wextra -Werror
RM = rm -f
CC = cc

NAME	= libft.a

SOURCES =	ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c \
			ft_itoa.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_putchar_fd.c ft_putendl_fd.c \
			ft_putstr_fd.c ft_putnbr_fd.c ft_split.c ft_strcat.c ft_strchr.c ft_strdup.c ft_striteri.c ft_strjoin.c \
			ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strmapi.c ft_strncmp.c ft_strncpy.c ft_strnstr.c ft_strrchr.c \
			ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c ft_strcpy.c \
			ft_printf.c ft_putchar_fd_print.c ft_putnbr_fd_print.c ft_putstr_fd_print.c ft_unsignednbr_fd.c hexatransformlower.c \
			hexatransformupper.c ft_strlen_print.c 	ft_pointerprint.c \
			ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstmap.c ft_lstiter.c\

OBJECTS	= ${SOURCES:.c=.o}

INCLUDES	= libft.h

%.o : %.c
	$(CC) ${CFLAGS} -c $< -o $@

${NAME}: ${OBJECTS}
	ar rcs ${NAME} ${OBJECTS}
	echo "$(COLOUR_RED)Libft compiled successfully!$(COLOUR_END)"

all: ${NAME}

clean:
	${RM} ${OBJECTS}
	

fclean: clean
	${RM} ${NAME}
	echo "$(COLOUR_RED)Libft cleaned successfully!$(COLOUR_END)"

re: fclean all

.PHONY: all clean fclean re bonus
