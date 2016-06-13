#!/usr/bin/env bash

# TODO: rename: newcontent.bash

# An update script, so acbuild-jxnu.bash doesn't always update sources,
# nor depend on a local hugo.
# Runs on a Linux builder with hugo and acbuild.

# Assume we are in jxnu and ../caddybox/caddybox*.aci exists.
# Assume we are on the desired jxnu branch and commit.
#
git pull

# Do not always want to rebase the theme
#cd themes/bootstrap
#git checkout master
#git pull
#cd ../..

# Build new HTML from the markdown source
rm -rf public
hugo

# Finally, handoff to acbuild to make the ACI
./acbuild-jxnu.bash
