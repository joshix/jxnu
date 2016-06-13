# Jxnu

(Work in progress) Markdown source, config, and tools for the `com.joshix.coreos.rkt.caddy.hugo` app container.

In "production" at https://joshix.com.

##  To generate a joshix.com app container

1. Sync master branch of jxnu on a machine with `hugo` and `acbuild`
2. Sync jxnu/themes/bootstrap with its upstream
3. run `acbuild-jxnu.bash`
4. scp the .aci result to core@joshix.com:
5. update the systemd unit on core@joshix.com if jxnu*.aci version changed
6. systemctl stop jxnu-aci
7. systemctl daemon-reload
8. sytemctl start jxnu-aci
9. health check
