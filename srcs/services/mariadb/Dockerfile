# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: shovsepy <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/06 16:41:17 by shovsepy          #+#    #+#              #
#    Updated: 2022/06/06 16:41:25 by shovsepy         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.13

LABEL "author"="shovsepy"

RUN apk update && apk upgrade && apk add mariadb mariadb-client
        
COPY tools/configure.sh /tmp/configure.sh

ENTRYPOINT ["sh", "/tmp/configure.sh"]
