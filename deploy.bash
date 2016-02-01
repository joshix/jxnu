#!/bin/bash

# Change $SSH to your user@sshhost.example.com string.
SSH=core@jxnu.joshix.com

# Build the site into the public/ directory.
rm -rf public
rm -f public.tgz
hugo

# Copy the public html dir to the target server.
tar czf public.tgz public
scp public.tgz $SSH:jxsite/
rm public.tgz

# Remote server operations.
# --warning=no-unknown-keyword quiets gnutar complaints about bsdtar headers.
ssh $SSH 'cd jxsite && rm -rf public/* && \
tar --warning=no-unknown-keyword -xzf public.tgz && \
rm public.tgz'
