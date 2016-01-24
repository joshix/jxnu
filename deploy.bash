#!/bin/bash

# deploy.bash <user@sshsrv.example.com>

SSH=$1

# Delete and rebuild the hugo public/ directory.
rm -rf public
rm -rf public.tgz
hugo
cp Caddyfile public/Caddyfile

# TODO: Replace scp with rsync differential.
# Copy the public dir and Dockerfile to the target server.
tar czf public.tgz public
scp public.tgz $1:
rm public.tgz
scp Dockerfile $1:
# Remote srv side
ssh $1 'rm -rf jxsite && mkdir -p jxsite && \
mv Dockerfile public.tgz jxsite/ && cd jxsite && \
tar --warning=no-unknown-keyword -xzf public.tgz && \
docker build -t josh_wood/jxsite . && \
cd .. && rm -rf jxsite && \
docker stop jxsite && \
docker rm -v jxsite && \
docker run --name jxsite -d -v /home/core/dotcaddy:/.caddy:rw \
-p 80:80 -p 443:443 josh_wood/jxsite'
