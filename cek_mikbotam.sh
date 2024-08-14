#!/bin/sh

# mematikan core mikbotam
#screen -X -S | grep autostart kill 
screen -ls | grep Detached | cut -d. -f1 | awk '{print $1}' | xargs kill

#memulai ulang core mikbotam
/usr/bin/screen -L -Logfile /opt/logbot.log -dmS autostart bash -c 'cd /var/www/html/mikbotam/Saldo && php Core_Saldo_Nonsaldo.php; exec bash '

echo "achmadpr"
