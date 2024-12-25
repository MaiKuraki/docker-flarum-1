#!/usr/bin/with-contenv sh
# shellcheck shell=sh

echo "Fixing perms..."
mkdir -p /data \
  /var/run/nginx \
  /var/run/php-fpm
chown flarum:flarum \
  /data \
  /opt/flarum \
  /opt/flarum/composer.json \
  /opt/flarum/composer.lock
chown -R flarum:flarum \
  /tpls \
  /var/lib/nginx \
  /var/log/nginx \
  /var/log/php83 \
  /var/run/nginx \
  /var/run/php-fpm
