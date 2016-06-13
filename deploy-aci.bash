#!/bin/bash

# Change $SSH to your user@sshhost.example.com string.
SSH=core@jxnu.joshix.com

# Build the site into the public/ directory.
rm -rf public
hugo

cp ../caddybox/caddy-v0.8.3-linux-amd64.aci .
./acbuild-jxnu.bash

