#!/usr/bin/env bash

# Add repository key
curl -sL http://nginx.org/keys/nginx_signing.key | apt-key add -

# Add repository
echo "deb http://nginx.org/packages/debian/ wheezy nginx" | tee /etc/apt/sources.list.d/nginx-org.list

# Update repositories
apt-get update

# Install
apt-get install -y nginx

# Restart service
service nginx restart
