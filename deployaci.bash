#!/usr/bin/env bash

# Convenience script. Run on a host that can't acbuild to get a new
# ACI from an acbuild VM $BLDR and upload it to the rkt host #SRVR.

# A BLDR is set up like (usually beneath $HOME):
#  jxnu-aci/
#			bin/
#					acbuild
#					hugo
#			caddybox/ (from git clone)
#			jxnu/	  (from git clone)
#				themes/bootstrap/ (from git clone of sub-repo)
#
# $ ssh $BLDR
# $ export PATH=$PATH:$HOME/jxnu-aci/bin
# [ $ cd jxnu-aci/caddybox && ./acbuild-caddybox.bash ] (Usually don't rebuild caddybox aci.)
# $ cd jxnu-aci/jxnu && ./acbuild-jxnu.bash

ACI=jxnu-v2-caddy-v0.8.3-linux-amd64.aci
BLDR=core@jxnu.joshix.com
#BLDR=-i ../acbuild/.vagrant/machines/default/virtualbox/private_key -P 2202 vagrant@127.0.0.1
SRVR=core@joshix.com

scp $BLDR:jxnu-aci/jxnu/$ACI .

scp $ACI $SRVR:

ssh $SRVR sudo systemctl restart jxnu-aci
