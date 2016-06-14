#!/usr/bin/env bash

# Convenience script. Run on the mac to get a new ACI from an acbuild VM
# and upload it to the rkt host.

ACI=jxnu-v1.0-caddy-v0.8.3-linux-amd64.aci
SSH=core@joshix.com

scp -i ../acbuild/.vagrant/machines/default/virtualbox/private_key -P 2202 \
vagrant@127.0.0.1:jxnu/$ACI .

scp $ACI $SSH:

ssh $SSH sudo systemctl restart jxnu-aci
#ssh $SSH sudo rkt gc --grace-period=0
#ssh $SSH sudo rkt image gc --grace-period=0
#ssh $SSH sudo systemctl start jxnu-aci
