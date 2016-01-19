FROM quay.io/josh_wood/caddy:latest
MAINTAINER Josh Wood <j@joshix.com>
COPY public /var/www/html/
EXPOSE 80 443 2015
WORKDIR /var/www/html
CMD ["/bin/caddy"]

