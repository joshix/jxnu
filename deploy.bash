#!/bin/bash

# deploy.bash <user@sshsrv.example.com>

SSH=$1

rm -r public
hugo
cp Caddyfile public/Caddyfile

# TODO: Replace scp with rsync differential.
ssh $1 'cd jxsite && rm -rf public'
scp -r public $1:jxsite/public
ssh $1 'cd jxsite && \
docker build -t josh_wood/jxsite . && \
docker stop jxsite && \
docker rm -v jxsite && \
docker run --name jxsite -d -v /home/core/dotcaddy:/.caddy:rw \
-p 80:80 -p 443:443 josh_wood/jxsite'
