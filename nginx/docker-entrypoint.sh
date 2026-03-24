#!/bin/sh

# Replace placeholders with actual environment variables
envsubst '${DOMAIN}' < /etc/nginx/conf.d/default.conf > /etc/nginx/conf.d/default.conf.tmp && mv /etc/nginx/conf.d/default.conf.tmp /etc/nginx/conf.d/default.conf

# Start NGINX
nginx -g 'daemon off;'
