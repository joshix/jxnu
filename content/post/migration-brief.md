---
Categories:
- Site
- Infrastructure
Description: ""
Tags:
- development
- golang
- CoreOS
- containers
- rkt
- hugo
- caddy
date: 2016-01-23T13:34:56-08:00
menu:
title: Migration Brief
author: Josh Wood
---

This is a mid-migration version of the once and future joshix.com,

* a site built with *Hugo*,
* served by the [*Caddy* web server](https://caddyserver.com) providing automatic
  *Let's Encrypt* TLS and HTTP/2,
* bundled with the site html in a container built `FROM` [*caddybox*][caddybox],
* running on CoreOS<!--more-->
* TODO:
  * Use `rkt` instead of docker
  * Cluster-ify with K8s and Tectonic

To be continued...


[caddy]: https://caddyserver.com
[caddybox]: https://github.com/joshix/caddybox
