#!/usr/bin/env bash

# mknu - Make new jxnu
#
# Rebases the repo, builds the site, builds an ACI.
# Requires hugo and acbuild.
# Isolates content updates from the acbuild script.

# Assume we are in jxnu repo on the right branch.
git pull

# Do not always want to rebase the theme.
#cd themes/bootstrap
#git checkout master
#git pull
#cd ../..

# Build new HTML from the markdown source
rm -rf public
hugo

# Finally, handoff to acbuild to make the ACI
./acbuild-jxnu.bash
