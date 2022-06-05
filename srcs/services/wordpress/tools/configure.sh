#!/bin/sh

echo "Wordpres"
# Start MariaDB
while ! mariadb -h $MYSQL_HOST -u $WP_DATABASE_USER -p $WP_DATABASE_PASSWORD $WP_DATABASE_NAME &> /dev/null; do
	sleep 3
	echo "in loop"
done


if [ ! -f "/var/www/html/index.html" ]; then

	# Getting the static website
	mv /tmp/index.html /var/www/html/index.html

	# Getting Adminer
	wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1-mysql-en.php -O /var/www/html/adminer.php &> /dev/null
	wget https://raw.githubusercontent.com/Niyko/Hydra-Dark-Theme-for-Adminer/master/adminer.css -O /var/www/html/adminer.css &> /dev/null

	wp core download --allow-root
    	wp config create --dbname=$WP_DATABASE_NAME --dbuser=$WP_DATABASE_USER --dbpass=$WP_DATABASE_PASSWORD --dbhost=$MYSQL_HOST --dbcharset="utf8" --dbcollate="utf8_general_ci" --allow-root
    	wp core install --url=$DOMAIN_NAME/wordpress --title=$WP_TITLE --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASSWORD --admin_email=$WP_ADMIN_EMAIL --skip-email --allow-root
    	wp user create $WP_USER $WP_EMAIL --role=author --user_pass=$WP_PASSWORD --allow-root
    	wp theme install inspiro --activate --allow-root
fi

echo "Wordpress Started on port 9000"
/usr/sbin/php-fpm7 -F -R
