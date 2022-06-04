FROM alpine:3.13

# Install nginx ssl
RUN apk update && apk upgrade && apk add nginx openssl

# SSL config
RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
	-out /etc/nginx/ssl/shovsepy.pem \
	-keyout /etc/nginx/ssl/shovsepy.key \
	-subj "/C=AM/ST=Yerevan/L=Yerevan/O=42 School/OU=shovsepy/CN=shovsepy/"

# nginx config
RUN mkdir -p /run/ngix
COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

# Start nginx
ENTRYPOINT ["nginx", "-g", "daemon off;"]
