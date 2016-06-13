#!/usr/bin/env bash
set -e

# Start the build with the caddybox root file system.
acbuild --debug begin ./caddy-v0.8.3-linux-amd64.aci

# In the event of the script exiting, end the build
acbuildEnd() {
    export EXIT=$?
    acbuild --debug end && exit $EXIT
}
trap acbuildEnd EXIT

# Name the ACI
acbuild --debug set-name joshix.com/jxnu

# hugo first to generate public dir.
acbuild --debug copy-to-dir ./public /var/www
acbuild --debug copy ./Caddyfile /Caddyfile

# How to execute caddy - explicitly change the served directory to public
acbuild --debug set-exec -- /bin/caddy -root /var/www/public

# Save the ACI
acbuild --debug write --overwrite jxnu-v1.0-caddy-v0.8.3-linux-amd64.aci
