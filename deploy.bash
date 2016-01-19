#!/bin/bash

# deploy.bash <config> <sshuri>
# e.g., ./deploy.bash jxnu core@jxnu.joshix.com

CONFIG=$1
SSH=$2

rm -r public
hugo --config=config.$CONFIG.toml
cp Caddyfile.$CONFIG public/Caddyfile

# TODO: Replace scp with rsync differential.
ssh $2 'cd jxsite && rm -rf public'
scp -r public $2:jxsite/public
ssh $2 'cd jxsite && \
docker build -t josh_wood/jxsite . && \
docker stop jxsite && \
docker rm -v jxsite && \
docker run --name jxsite -d -v /home/core/dotcaddy:/.caddy:rw \
-p 80:80 -p 443:443 josh_wood/jxsite'
