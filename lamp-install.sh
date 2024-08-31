#!/bin/bash

# Update apt package manager
sudo apt update

# Install Apache web server
sudo apt install apache2 -y

# Install MySQL database server
sudo apt install mysql-server -y

# Run MySQL security script
sudo mysql_secure_installation

# Install PHP and required modules
sudo apt install php libapache2-mod-php php-mysql -y

# Restart Apache web server
sudo systemctl restart apache2

# Install PHPMyAdmin
sudo apt install phpmyadmin -y

# Prompt for PHPMyAdmin root password
echo "Enter a password for PHPMyAdmin root user:"
read -s PMA_ROOT_PASS

# Set PHPMyAdmin root password
sudo mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY '$PMA_ROOT_PASS';"

# Configure PHPMyAdmin with Apache
sudo echo 'Include /etc/phpmyadmin/apache.conf' >> /etc/apache2/apache2.conf

# Restart Apache web server
sudo systemctl restart apache2
