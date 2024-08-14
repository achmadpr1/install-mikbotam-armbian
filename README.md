# install-mikbotam-armbian
```
apt update
```
```
apt-get -y install mariadb-server mariadb-client
```
```
mysql_secure_installation
```
```
apt-get -y install apache2
```
```
apt-get -y install php libapache2-mod-php
```
```
apt-get -y install php-mysql php-curl
```
```
service apache2 restart
```
```
nano /var/www/html/info.php
```
```
<?php phpinfo(); ?>
```
```

Simpan file dengan menekan Ctrl+X, ketik Y, tekan Enter. Melalui web browser, buka alamat IP_Address/info.php. Informasi service PHP yang berjalan di server akan tampil.

```
```
apt-get -y install phpmyadmin
```
```
sudo ln -s /usr/share/phpmyadmin /var/www/html/
```
```
sudo mysql -u root
```
```
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'achmadpr';
```
```
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;
```
```
FLUSH PRIVILEGES;
```
```
exit
```
```


