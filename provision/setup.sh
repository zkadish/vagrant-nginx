#!/bin/bash

echo 'install apt-get update'
apt-get update -y

echo 'install nginx'
apt-get install nginx -y

echo 'configure nginx'
cp /vagrant/provision/config/nginx_vhost /etc/nginx/sites-available/nginx_vhost
ln -s /etc/nginx/sites-available/nginx_vhost /etc/nginx/sites-enabled/
rm -rf /etc/nginx/sites-available/default
service nginx restart
