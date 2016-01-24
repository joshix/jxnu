#!/bin/bash

# Change $SSH to your user@sshhost.example.com string.
SSH=core@jxnu.joshix.com

# Build the site into the public/ directory.
rm -rf public
rm -rf public.tgz
hugo
cp Caddyfile public/Caddyfile

# Copy the public dir and Dockerfile to the target server.
tar czf public.tgz public
scp public.tgz $SSH:
rm public.tgz
scp Dockerfile $SSH:

# Remote server operations. Set up the directory, build the image,
# and run the container.
# --warning=no-unknown-keyword quiets gnutar complaints about bsdtar headers.
ssh $SSH 'rm -rf jxsite && mkdir -p jxsite && \
mv Dockerfile public.tgz jxsite/ && cd jxsite && \
tar --warning=no-unknown-keyword -xzf public.tgz && \
docker build -t josh_wood/jxsite . && \
cd .. && rm -rf jxsite && \
docker stop jxsite && \
docker rm -v jxsite && \
docker run --name jxsite -d -v /home/core/dotcaddy:/.caddy:rw \
-p 80:80 -p 443:443 josh_wood/jxsite'
