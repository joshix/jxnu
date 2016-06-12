---
categories:
- Site
- Infrastructure
tags:
- development
- CoreOS
- containers
- rkt
- hugo
- caddy
- Let's Encrypt
author: Josh Wood
date: 2016-06-12T04:18:56-08:00
title: Migration brief
---

This is a mostly-migrated version of the once and future joshix.com:

* Built with [*Hugo*](http://gohugo.io),
* served by the [*Caddy* web server](https://caddyserver.com) with automatic
  *Let's Encrypt* TLS and HTTP/2,
* packaged in a [caddybox](https://github.com/joshix/caddybox/tree/acbuild) [App Container Image (ACI)](https://github.com/appc/spec),
* executed by the [`rkt` container engine](https://coreos.com/rkt/),
* running on [CoreOS Linux](https://coreos.com).<!--more-->

## TODO:
  * [x] Use `rkt` instead of docker.
  * [ ] Cluster-ify with K8s and "rktnetes"

To be continued...
