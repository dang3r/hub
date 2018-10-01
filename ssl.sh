#!/usr/bin/env bash

git clone https://github.com/dang3r/letsencrypt-route53.git

for domain in geofcardoza.com lisacardoza.com isabellacardoza.com jenniferho.ca ;
do
  export DOMAIN="$domain"
  make -C letsencrypt-route53 run
  cp -L -R "letsencrypt-route53/$domain/live/$domain" "/etc/ssl/$domain"
done

