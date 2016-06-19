#!/usr/bin/env bash

# Convenience script. Run on the mac to get a new ACI from an acbuild VM
# and upload it to the rkt host.

# A BLDR is set up like (usually beneath $HOME):
#  jxnu-aci/
#			bin/
#					acbuild
#					hugo
#			caddybox/ (from git clone -b acbuild)
#			jxnu/	  (from git clone -b master)
#				themes/bootstrap/ (from git clone of sub-repo, for now)
#
# $ ssh $BLDR
# $ export PATH=$PATH:$HOME/jxnu-aci/bin
# [ $ cd jxnu-aci/caddybox && ./acbuild-caddybox.bash ] (Usually don't rebuild caddybox aci.)
# $ cd jxnu-aci/jxnu && ./mknu.bash

ACI=jxnu-v1.0-caddy-v0.8.3-linux-amd64.aci
#BLDR=core@jxnu.joshix.com
BLDR=core@bldr-do0.joshix.com
#BLDR=j@chapeau.local
#BLDR=-i ../acbuild/.vagrant/machines/default/virtualbox/private_key -P 2202 vagrant@127.0.0.1
SRVR=core@joshix.com

scp $BLDR:jxnu-aci/jxnu/$ACI .

scp $ACI $SRVR:

ssh $SRVR sudo systemctl restart jxnu-aci
#ssh $SRVR sudo rkt gc --grace-period=0
#ssh $SRVR sudo rkt image gc --grace-period=0
#ssh $SRVR sudo systemctl start jxnu-aci
