# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    configure.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: shovsepy <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/06 16:38:47 by shovsepy          #+#    #+#              #
#    Updated: 2022/06/06 16:39:34 by shovsepy         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/sh

if [ ! -f "/etc/redis.conf.bak" ]; then

	# Creating backup
	cp /etc/redis.conf /etc/redis.conf.bak

	# Configuring the network, size and caching policy
	sed -i "s|bind 127.0.0.1|#bind 127.0.0.1|g" /etc/redis.conf
	sed -i "s|# maxmemory <bytes>|maxmemory 2mb|g" /etc/redis.conf
	sed -i "s|# maxmemory-policy noeviction|maxmemory-policy allkeys-lru|g" /etc/redis.conf
fi

redis-server --protected-mode no
