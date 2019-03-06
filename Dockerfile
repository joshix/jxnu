FROM quay.io/joshix/caddy:v0.11.5
MAINTAINER Josh Wood <j@joshix.com>
COPY public/ /var/www/html/
COPY Caddyfile /var/www/html/Caddyfile
USER 22015
