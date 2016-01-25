---
categories:
- Site
- Infrastructure
description: "A report on joshix.com migration status."
tags:
- development
- CoreOS
- containers
- rkt
- hugo
- caddy
- Let's Encrypt
author: Josh Wood
date: 2016-01-23T13:34:56-08:00
title: Migration Brief
---

This is a mid-migration version of the once and future joshix.com,

* a site built with *Hugo*,
* served by the [*Caddy* web server](https://caddyserver.com) providing automatic
  *Let's Encrypt* TLS and HTTP/2,
* bundled with the site html in a container built `FROM` [*caddybox*][caddybox],
* running on CoreOS<!--more-->
* TODO:
  - [~] Use `rkt` instead of docker (currently rkt running; need controlled net instead of `--net=host`; need systemd unit written)
  - [ ] Cluster-ify with K8s and Tectonic
  - [x] convert all topmatter to YAML (from TOML)

To be continued...


[caddy]: https://caddyserver.com
[caddybox]: https://github.com/joshix/caddybox
