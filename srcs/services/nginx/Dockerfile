# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: shovsepy <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/06 16:42:18 by shovsepy          #+#    #+#              #
#    Updated: 2022/06/06 16:42:31 by shovsepy         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.13

LABEL "author"="shovsepy"

# Install nginx ssl
RUN apk update && apk upgrade && apk add nginx openssl

# SSL config
RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
	-out /etc/nginx/ssl/shovsepy.pem \
	-keyout /etc/nginx/ssl/shovsepy.key \
	-subj "/C=AM/ST=Yerevan/L=Yerevan/O=42 School/OU=shovsepy/CN=shovsepy/"

# nginx config
RUN mkdir -p /run/nginx
COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

# Start nginx
ENTRYPOINT ["nginx", "-g", "daemon off;"]
