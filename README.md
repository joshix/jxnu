# Joshix.com New Underneath (`jxnu`)

Work in progress. Move the same old content to new infrastructure.

Markdown source, config, and tools for the
`com.joshix.coreos.rkt.caddy.hugo` app container image -- the
[joshix.com][jx] web site. This image [`acbuild begin`][acbuild-begin]s
with the [caddybox ACI][caddybox-acbuild], then adds the HTML generated
by [Hugo][hugo] to bundle the site as an app container.

##  Clunkily generate a joshix.com app container

### Here

1. Sync master branch of jxnu on a machine with `git`, `hugo` and `acbuild`:  
`$ cd jxnu && git pull`
2. Sync `jxnu/themes/bootstrap` with its upstream:  
`$ cd themes/bootstrap && git pull`
3. Run `jxnu/acbuild-jxnu.bash` to `hugo` the site and `acbuild` the site container:  
`$ cd .. && ./acbuild-jxnu.bash`
4. Copy the resulting `jxnu-vM.N-caddy-vX.Y.Z-linux-amd64.aci` to server

### There

5. Update the `jxnu-aci.service` systemd unit on server if the jxnu ACI version changed
6. `$ systemctl stop jxnu-aci`
7. `$ systemctl daemon-reload` if (1), above
8. `$ systemctl start jxnu-aci`


[acbuild-begin]: https://github.com/appc/acbuild/blob/master/Documentation/subcommands/begin.md
[caddybox-acbuild]: https://github.com/joshix/caddybox/tree/acbuild
[hugo]: https://gohugo.io/
[jx]: https://joshix.com/
