# Jxnu

(Work in progress) Markdown source, config, and tools for the
`com.joshix.coreos.rkt.caddy.hugo` app container image -- the
[joshix.com][jx] web site. This image [`acbuild begin`][acbuild-begin]s
with the [caddybox ACI][caddybox-acbuild], then adds the HTML generated
by [Hugo][hugo] to bundle the site as an app container.

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


[acbuild-begin]: https://github.com/appc/acbuild/blob/master/Documentation/subcommands/begin.md
[caddybox-acbuild]: https://github.com/joshix/caddybox/tree/acbuild
[hugo]: https://gohugo.io/
[jx]: https://joshix.com/
