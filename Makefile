# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mblank <mblank@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/31 13:28:54 by mblank            #+#    #+#              #
#    Updated: 2022/11/25 13:38:56 by mblank           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS = ft_atoi.c ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c \
	ft_memset.c ft_strlcat.c ft_strlen.c ft_strncmp.c ft_strnstr.c ft_strlcpy.c ft_toupper.c \
	ft_tolower.c ft_memchr.c ft_strchr.c ft_strrchr.c ft_memcmp.c ft_memmove.c ft_memcpy.c ft_split.c \
	ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c ft_itoa.c ft_strmapi.c ft_strtrim.c ft_striteri.c \
	ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \

OBJS = $(SRCS:.c=.o)

BONUS			=	ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c\
					ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c\
					
BONUS_OBJS		= $(BONUS:.c=.o)

CC = gcc
RM = rm -rf
CFLAGS = -Werror -Wextra -Wall 

NAME = libft.a

all: $(NAME)

$(NAME): $(OBJS)
	@ar -rcs $(NAME) $(OBJS)

$(OBJS): $(SRCS)
	@$(CC) $(CFLAGS) -c $(SRCS)

clean:
	@$(RM) $(OBJS) $(BONUS_OBJS)

fclean:	clean
	@$(RM) $(NAME)

re:	fclean $(NAME)

bonus: $(OBJS) $(BONUS_OBJS)
		ar rcs $(NAME) $(OBJS) $(BONUS_OBJS)

.PHONY:			all clean fclean re bonus
