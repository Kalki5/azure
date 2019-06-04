#!/bin/bash -x

apt-get update
apt-get install apache2 -y

echo '<h1>Hello World</h1>' > /var/www/html/index.html
echo $(hostname -i) >> /var/www/html/index.html
echo '<br>' >> /var/www/html/index.html
echo $(curl ifconfig.co) >> /var/www/html/index.html

exit 0
