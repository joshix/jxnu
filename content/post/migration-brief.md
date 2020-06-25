---
author: Josh Wood
date: 2016-06-12T04:18:56-08:00
description:
draft: false
tags:
- CoreOS
- containers
- rkt
- hugo
- caddy
- Let's Encrypt
title: Migration brief
type: post
---

The "[jxnu][jxnu]" project put the site's old content atop new infrastructure. This is a mostly-migrated version of the once and future joshix.com:

* Built with [*Hugo*](http://gohugo.io),
* served by the [*Caddy* web server](https://caddyserver.com) with automatic
  *Let's Encrypt* TLS and HTTP/2,
* packaged in a discrete [App Container Image (ACI)](https://github.com/appc/spec) based on [caddybox](https://github.com/joshix/caddybox),
* executed by the [`rkt` container engine](https://coreos.com/rkt/),
* running on [CoreOS Linux](https://coreos.com/os/docs/latest/).<!--more-->

## TODO

* [x] Use `rkt` instead of docker.
* [x] Cluster-ify with Kubernetes ~~and "[rktnetes][rktnetes]"~~

To be continued...

[jxnu]: https://github.com/joshix/jxnu
[rktnetes]: https://kubernetes.io/docs/getting-started-guides/rkt/
