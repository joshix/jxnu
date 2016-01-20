---
Categories:
- Development
- GoLang
Description: ""
Tags:
- development
- golang
- CoreOS
- containers
- docker
- hugo
date: 2016-01-19T03:34:56-08:00
menu:
title: Migration Brief
author: Josh Wood
---

This is a mid-migration version of the once and future joshix.com,

* a site built with *Hugo*,
* served by the *Caddy* web server providing automatic *Let's Encrypt* TLS and HTTP/2,
* bundled with the site html in a container built `FROM` [*caddybox*][caddybox],
* running on CoreOS<!--more-->
* TODO:
  * Use `rkt` instead of docker
  * Cluster-ify with K8s and Tectonic

To be continued...

[caddybox]: https://github.com/joshix/caddybox
