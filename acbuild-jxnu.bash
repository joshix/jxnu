#!/usr/bin/env bash
set -e

ACBUILD=../bin/acbuild
HUGO=../bin/hugo

# Builds the site, builds an ACI.
# Requires hugo and acbuild.

# Generate the html
rm -rf public
$HUGO

# Start the build with the caddybox ACI. Not necessary
# to rebuild it with every site content update.
# Assumes the base ACI is in ../caddybox/.
$ACBUILD --debug begin ../caddybox/caddy-v0.9.1-linux-amd64.aci

# In the event of the script exiting, end the build
acbuildEnd() {
    export EXIT=$?
    $ACBUILD --debug end && exit $EXIT
}
trap acbuildEnd EXIT

# Name the ACI
$ACBUILD --debug set-name joshix.com/jxnu

# ./public must exist. See mknu.bash to sync and generate it with hugo.
$ACBUILD --debug copy-to-dir ./public /var/www
$ACBUILD --debug copy ./Caddyfile /Caddyfile

# How to execute caddy - explicitly change the served directory to public
$ACBUILD --debug set-exec -- /bin/caddy -root /var/www/public

# Save the ACI
$ACBUILD --debug write --overwrite jxnu-v2-caddy-v0.9.1-linux-amd64.aci
