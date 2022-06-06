# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    configure.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: shovsepy <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/06 16:37:35 by shovsepy          #+#    #+#              #
#    Updated: 2022/06/06 16:37:47 by shovsepy         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/sh

if [ ! -f "/etc/vsftpd/vsftpd.conf.bak" ]; then

    mkdir -p /var/www/html

    # Create a backup
    cp /etc/vsftpd/vsftpd.conf /etc/vsftpd/vsftpd.conf.bak

    # Update the configuration
    mv /tmp/vsftpd.conf /etc/vsftpd/vsftpd.conf

    # Add the FTP_USER, change his password and declare him as the owner of wordpress folder and all subfolders
    adduser $FTP_USR --disabled-password
    echo "$FTP_USR:$FTP_PWD" | /usr/sbin/chpasswd &> /dev/null
    chown -R $FTP_USR:$FTP_USR /var/www/html

    # Add the user to the vsftpd userlist
    echo $FTP_USR | tee -a /etc/vsftpd.userlist &> /dev/null

fi

echo "FTP started on port 21"
/usr/sbin/vsftpd /etc/vsftpd/vsftpd.conf
