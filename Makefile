# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ssoumill <ssoumill@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/27 18:12:17 by ssoumill          #+#    #+#              #
#    Updated: 2024/08/09 13:05:16 by ssoumill         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = cc

CFLAGS = -Wall -Werror -Wextra

SRC = ft_pointer.c libft_utils.c main.c \

OBJ = $(SRC:.c=.o)

AR = ar -rc				

all : $(NAME)

$(NAME) : $(OBJ)
	$(AR) $(NAME) ${OBJ}
$(OBJ) :
	$(CC) $(CFLAGS) -c $(@:.o=.c)
clean :
	rm -f $(OBJ)

fclean : clean
	rm -f $(NAME)

re : fclean $(NAME)

.PHONY: all fclean clean re
