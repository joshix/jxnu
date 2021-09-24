---
author: Josh Wood
date: 2018-09-03T21:49:56-08:00
description: A long story of short content
draft: true
tags:
- caddy
- CoreOS
- hugo
- rkt
- Kubernetes
- serverless
- OpenShift
title: Migration report
type: post
---

## History

Many of the words and pictures here have been through generations of domain names and server implementations, from hand-crafted hardware hooked to home DSL to containers automatically orchestrated in the Cloud. This site is like your grandmother's sofa. It gets moved more often than it gets updated.

This is the boring part of that story: all the different ways much the same content has been published and delivered.

### Long ago, technically in the last century

The first incarnation of this site was a handful of homespun HTML pages stuck in a corner of Utopian.net's earliest mail server<sup>[1](#footnote1)</sup>, addressed as utopian.net/josh. Everyone – that is, both of us – who had an email address got a personal web space, a `~userdir`, as was the style at the time. Because I was the resident test user for every stray script in `cgi-bin/`, even Movable Type ran there for a few minutes. The oldest preserved post from those days is a [pair of haiku written in November, 2005][inked].

Like every other blog on the internet mine moved to [WordPress][wp] in 2004. I ran it on traditional "web hosting" on bigger newer Utopian servers: `chroot(8)`'d FTP access to an apache vhost directory, where a WordPress install served a single site. Same thing running in every `$HOME/../*` up and down the block device. Searching for a way to make each of these "vhosts" more hermetic and more portable led us at first to "software appliances"<sup>[2](#footnote2)</sup>. The evolving mechanisms we chose for sealing someone's site into a discrete, portable unit – *containing* their *application*, you might say – had roots in our use of BSD Jails, Solaris Zones, and especially with Plan 9 process name spaces. Later it led us to work atop linux-vserver, then LXC and cgroups, sending me on an inevitable collision course with Docker, rkt, CoreOS, and Kubernetes.

### Jx% – joshix.com

* Domain registered 2008-09-03
* Developed [*simplish*][simplish] microformats theme for WordPress site, 2008
* Habari site: Ported simplish to Habari blog engine as [*sp*][sp], November 2008
* WordPress blog with simplish theme on Utopian.net's *Pomfolio* multi-tenant blog service, 2011-2013
* *Jxggl* project, June 2013: Move content to Google Sites and Blogger after Utopian.net was acquired

The domain name was a birthday gift to go with a longtime online handle, registered September 3, 2008. I ported the Scribbish theme (already out of date) to WordPress, and made my version a place to experiment with dynamically microformatting everything on the new domain. [*Simplish*][simplish] served a few thousand WordPress users in the themes directory over two or three years. A stripped-down version became scaffolding atop which we built a number of commercial sites.

One such simplish variant, "*sµ*", customized for self-service signups, docs and support, styled the hub site for Utopian's multi-tenant blog as a service, Pomfolio. Joshix.com was a CNAME pointing to a Pomfolio site under a simplish theme from 2009 until 2013. Already a brush with serverless, if you pretend I wasn't also the guy who ran the WordPress servers that served the blogs as a service.

#### Jxnu (<i>J</i>oshi<i>X</i>.com <i>N</i>ew <i>U</i>nderneath)

* [*Jxnu* project][jxnu], early 2016: Content converted and site built from Markdown with [Hugo][hugo], served by [Caddy][caddy] from a [Container Linux][cl] host, using [rkt][rkt] to run a [container][jxnu-quay] consisting of [Caddybox][caddybox] + the site HTML
* Jxnu [live on joshix.com][migration-brief], 2016-06-12
* Container transitions through ACI, Docker, and [OCI][oci-img] formats

#### Jxnu 2

* 2017-09-03: Evolved away the web server and the Linux container host. Now I write Markdown, compile HTML with Hugo, and deploy to Firebase hosting. Many of the components of the [first "nu" iteration][migration-brief] have been eliminated from the second:

  * ~~Caddy~~
  * ~~Caddybox~~
  * ~~Jxnu container~~
  * ~~rkt~~
  * ~~Container Linux~~

## Out of the lab

It was more than convenient to use tech I helped make at [CoreOS][coreos] and Red Hat. Running this quaint personal site on containers, on rkt, and eventually on [Kubernetes][k8s] provided the seeds of several [demos and talks][slides].

However, producing HTML files and uploading them to a managed hosting service reduces cost and increases reliability. No more maintaining a durable cluster, nor even a machine, nor even so much as an HTTPd for this site. You could almost call it "serverless".

---

## Notes

<a name="footnote1">1</a>: For impossibly arcane reasons this mail server bore the ironic hostname *www*.utopian.net.

<a name="footnote2">2</a>: We actually continued to call each one a vhost, but I tried to call the *concept* a software appliance. It was a good name: You can tell because lots of people tried to use it for lots of other things that had nothing to do with one another and nobody says it or remembers it anymore.

[caddy]: https://caddyserver.com
[caddybox]: https://github.com/joshix/caddybox
[cl]: https://coreos.com/os/docs/latest/
[coreos]: https://coreos.com
[hugo]: https://gohugo.io
[inked]: /2005/11/13/inked/
[jxnu]: https://github.com/joshix/jxnu
[jxnu-quay]: https://quay.io/josh_wood/jxnu
[k8s]: https://kubernetes.io/
[migration-brief]: /2016/06/12/migration-brief/
[oci-img]: https://github.com/opencontainers/image-spec
[openshift-home]: https://openshift.com
[rkt]: https://github.com/rkt/rkt
[simplish]: https://github.com/joshix/simplish
[slides]: https://speakerdeck.com/joshix
[sp]: http://code.google.com/p/sp-theme
[utopian]: http://utopian.net
[wp]: https://wordpress.org
