# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: shovsepy <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/30 14:57:57 by shovsepy          #+#    #+#              #
#    Updated: 2022/05/30 14:58:09 by shovsepy         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	@docker-compose -f srcs/docker-compose.yml up --build

stop:
	@docker-compose -f srcs/docker-compose.yml down

clean: stop
	@rm -rf srcs/data

prune: clean
	@docker system prune -f

re: prune all

.PHONY: all stop clean prune re
