#!/bin/bash

# Build the site into the public/ directory.
# We do this here to avoic the acbuild script depending on
# hugo. (?)
rm -rf public
hugo

cp ../caddybox/caddy-v0.8.3-linux-amd64.aci .
./acbuild-jxnu.bash
