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
title: Migration brief
---

This is a mid-migration version of the once and future joshix.com,

* a site built with *Hugo*,
* served by the [*Caddy* web server](https://caddyserver.com) providing automatic
  *Let's Encrypt* TLS and HTTP/2,
* ~~bundled with the site html in a container built `FROM` [*caddybox*][caddybox]~~,
* running on CoreOS<!--more-->
* TODO:
  - [x] Use `rkt` instead of docker. In a `rkt` container, caddy is better
    behaved inside a more complete file
    system and has `cwd(2)` `/` and its EUID has $HOME at `/root` so that the Let's Encrypt key store lives at `/root/.caddy/` inside the container.
  - [ ] Cluster-ify with K8s and Tectonic
  - [x] convert all topmatter to YAML (from TOML)
  - [ ] convert site config.toml to config.yaml

To be continued...


[caddy]: https://caddyserver.com
[caddybox]: https://github.com/joshix/caddybox
