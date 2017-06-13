FROM quay.io/josh_wood/caddy:v0.10.3
MAINTAINER Josh Wood <j@joshix.com>
COPY public/ /var/www/html/
COPY Caddyfile /var/www/html/Caddyfile
