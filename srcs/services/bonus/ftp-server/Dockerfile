# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: shovsepy <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/06 16:32:26 by shovsepy          #+#    #+#              #
#    Updated: 2022/06/06 16:36:43 by shovsepy         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine:3.13

LABEL "author"="shovsepy"

RUN apk update && apk upgrade && apk add vsftpd

COPY conf/vsftpd.conf /tmp/vsftpd.conf
COPY tools/configure.sh /tmp/configure.sh

ENTRYPOINT ["sh", "/tmp/configure.sh"]
