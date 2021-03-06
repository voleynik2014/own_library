# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: voliynik <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/26 12:54:12 by voliynik          #+#    #+#              #
#    Updated: 2016/12/01 12:29:40 by voliynik         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=libft.a

CC=gcc

CFLAGS=-Wall -Wextra -Werror -c -I$(INC)

RM=rm -f

INC = ./libft.h

SRC=ft_isascii.c	ft_memcpy.c	ft_strchr.c	ft_strlen.c	ft_strrchr.c \
	ft_atoi.c	ft_isdigit.c	ft_memccpy.c	ft_strcmp.c	ft_strncat.c	ft_strstr.c \
	ft_bzero.c	ft_isprint.c	ft_memmove.c	ft_strcpy.c	ft_strncmp.c	ft_tolower.c \
	ft_isalnum.c	ft_memchr.c	ft_memset.c	ft_strdup.c	ft_strncpy.c	ft_toupper.c \
	ft_isalpha.c	ft_memcmp.c	ft_strcat.c	ft_strlcat.c	ft_strnstr.c	ft_memalloc.c \
	ft_memdel.c		ft_strnew.c	ft_strdel.c	ft_strclr.c		ft_striter.c	ft_striteri.c \
	ft_strmap.c		ft_strmapi.c	ft_strequ.c		ft_strnequ.c	ft_strsub.c	ft_strjoin.c \
	ft_strtrim.c	ft_strsplit.c	ft_putnbr_fd.c	ft_itoa.c		ft_putchar.c	ft_putstr.c \
	ft_putendl.c	ft_putchar_fd.c	ft_putnbr.c		ft_putstr_fd.c	ft_putendl_fd.c	ft_lstnew.c\
	ft_lstdelone.c	ft_lstdel.c		ft_lstadd.c		ft_lstiter.c	ft_lstmap.c


OBJ=$(SRC:.c=.o)

$(NAME): libft.h
	    $(CC) $(CFLAGS)	$(SRC)
			ar rc $(NAME) $(OBJ)
			    ranlib $(NAME)

all: $(NAME)

clean:
	    $(RM) $(OBJ)

fclean: clean
	    $(RM) $(NAME)

re: fclean all

.PHONY: clean fclean
