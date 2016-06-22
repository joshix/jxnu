#!/usr/bin/env bash
set -e

# Builds the site, builds an ACI.
# Requires hugo and acbuild.

# Generate the html
rm -rf public
hugo

# Start the build with the caddybox ACI. Not necessary
# to rebuild it with every site content update.
# Assumes the base ACI is in ../caddybox/.
acbuild --debug begin ../caddybox/caddy-v0.8.3-linux-amd64.aci

# In the event of the script exiting, end the build
acbuildEnd() {
    export EXIT=$?
    acbuild --debug end && exit $EXIT
}
trap acbuildEnd EXIT

# Name the ACI
acbuild --debug set-name joshix.com/jxnu

# ./public must exist. See mknu.bash to sync and generate it with hugo.
acbuild --debug copy-to-dir ./public /var/www
acbuild --debug copy ./Caddyfile /Caddyfile

# How to execute caddy - explicitly change the served directory to public
acbuild --debug set-exec -- /bin/caddy -root /var/www/public

# Save the ACI
acbuild --debug write --overwrite jxnu-v1.0-caddy-v0.8.3-linux-amd64.aci
