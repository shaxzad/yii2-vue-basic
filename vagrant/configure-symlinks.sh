echo "-- Symlinking Nginx config"
sudo rm -rf /etc/nginx/sites-enabled
sudo rm -rf /etc/nginx/sites-available
sudo ln -sf /var/www/vagrant/nginx /etc/nginx/sites-enabled
sudo ln -sf /var/www/vagrant/nginx /etc/nginx/sites-available
sudo service nginx restart

echo "-- Symlinking MOTD"
unlink /etc/motd
ln -sf /var/www/vagrant/motd.txt /etc/motd