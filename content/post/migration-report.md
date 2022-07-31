---
author: Josh Wood
date: 2022-09-03T21:49:56-05:00
description: A long story of short content
draft: true
tags:
- caddy
- CoreOS
- hugo
- rkt
- Kubernetes
- OpenShift
- Utopian.net
- WordPress
- simplish
title: Migration report
type: post
---

## History

Many of the words and pictures here have been through generations of domain names and server trends, from hand-crafted hardware hooked to home DSL to containers automatically orchestrated in *The Cloud*.

This is the most boring part of that story: all the different ways to publish much the same content.

### Sometime last century

The first incarnation of this site was a handful of homespun HTML stuck in a corner of [Utopian.net][utopian-wayback]'s first email server[^1]. Everyone – that is, both of us – who had a utopian.net email address got a web *~userdir*, as was the style at the time. While `utopian.net/~josh` presented an index not a lot different from [this site's][jx-root] as early as 1999, the oldest preserved post from those days is a [pair of haiku written in November, 2005][inked].

Like every other blog on the internet mine moved to [WordPress][wp] in 2004. It ran on traditional "web hosting" on bigger newer Utopian servers: `chroot(8)`'d FTP access to an apache vhost directory, where a WordPress install served a single site. Same thing running in every `$HOME` up and down the block device.

Searching for a way to make each of these "vhosts" more hermetic and efficient led us at first to "software appliances"[^2]. The evolving mechanisms we chose for sealing someone's site into a discrete, portable unit – *containing* their *application*, you might say – had roots in our use of BSD Jails, Solaris Zones, and Plan 9 process name spaces. Later it led us to linux-vserver, then LXC and cgroups, setting me on a collision course with Docker, rkt, [CoreOS][coreos-rhcos], and [Kubernetes][k8s].

### Jx% – joshix.com

The domain name was a birthday gift to go with a longtime online handle. Registered September 3, 2008:

```sh
% whois joshix.com |grep Creat
   Creation Date: 2008-09-03T20:21:49Z
```

For the new domain, I cribbed and adapted the quintessentially mid-naughties looks of the Typo engine's Scribbish theme to WordPress. My take was an experiment in dynamically [microformatting][microformats] everything. A few thousand other sites also adopted [*simplish*][simplish] once it was [in the WordPress themes directory][simplish-theme-dir]. A stripped-down internal version served as common scaffolding atop which Utopian.net built sites for clients.

 At [Utopian.net Labs][utopian-labs-wayback] we made an even simpler simplish for the object-oriented and short-lived [Habari][habari] CMS in 2008. Called [*sp*][sp], my site ran it for most of 2009.

The "sµ" variant of simplish was reworked into the self-hosted hub of Utopian.net's [Wordpress MU][wpmu]-based multitenant blog as a service, Pomfolio. Joshix.com was a CNAME pointing to a Pomfolio blog from 2010 to 2013.

#### Sites and Blogger - the laziest era (so far)

Utopian.net was acquired by [John Companies][johnco] in 2012. They were kind enough to grant me emeritus hosting there, but the following June I moved [joshix.com to Google Sites][jx-gsites-wayback] and Blogger.

#### Jxnu

This site adopts the infrastructure I'm building at work, so in early 2016 the [*Jxnu* project][jxnu] migrated it to CoreOS tech. To do that, I built the site from Markdown with [Hugo][hugo] and had [Caddy][caddy] serve it from a [Container Linux][cl] host. There, our [rkt][rkt] container engine executed a [`jxnu` container][jxnu-quay] consisting of the site HTML layered atop a [Caddybox][caddybox] base image. This site-in-a-box [went live on joshix.com][migration-brief] in June, 2016. The jxnu container image changed formats through all the "container wars" transitions from Docker to ACI to the eventual standard [Open Container Image (OCI)][oci-img].

#### Jxnu v2

I also ran the jxnu image experimentally on Kubernetes, Red Hat's OpenShift Kubernetes distro, and some cloud container runtime services. Being static and stateless and standard it was easily transported. Nevertheless by mid 2017 the site had evolved it away, along with the container engine and the Linux VM on which it ran. Now I write Markdown, compile it with Hugo, and deploy the result to Firebase. All of the server components of the [first "nu" iteration][migration-brief] have been obviated:

* ~~Jxnu container~~
  * ~~Caddybox base image~~
    * ~~Caddy web server~~
* ~~rkt container engine~~
* ~~Container Linux virtual machine~~

## Out of the lab

It was more than convenient to use tech I helped make at [CoreOS][coreos] and [Red Hat][redhat]. Running this quaint personal site on containers, on rkt, and eventually on Kubernetes provided the seeds of several [demos and talks][slides]. For now producing HTML and uploading it to a managed hosting service is cheaper, easier and probably more reliable than infrastructure I'm always fiddling with.

[^1]: For impossibly arcane reasons this `MX 10` mail server bore the ironic hostname *www*.utopian.net.
[^2]: We actually continued to call each one a vhost, but I tried to call the *concept* a software appliance. It was a good name: You can tell because lots of people tried to use it for lots of different things that had nothing to do with one another and nobody says it or remembers it anymore.

[caddy]: https://caddyserver.com
[caddybox]: https://github.com/joshix/caddybox
[cl]: https://coreos.com/os/docs/latest/ "That is, CoreOS. The operating system."
[coreos]: https://coreos.com "CoreOS the company. Acquired by Red Hat."
[coreos-rhcos]: https://docs.openshift.com/container-platform/4.10/architecture/architecture-rhcos.html "CoreOS the operating system. That is, CoreOS, then Container Linux, now once again (RHEL) CoreOS."
[habari]: https://en.wikipedia.org/wiki/Habari
[hugo]: https://gohugo.io
[inked]: /2005/11/13/inked/
[johnco]: http://johncompanies.com/
[jx-gsites-wayback]: https://web.archive.org/web/20160118203022/http://www.joshix.com/
[jx-root]: / "a CV in business card form"
[jxnu]: https://github.com/joshix/jxnu
[jxnu-quay]: https://quay.io/josh_wood/jxnu
[k8s]: https://kubernetes.io/
[microformats]: http://microformats.org
[migration-brief]: /2016/06/12/migration-brief/
[oci-img]: https://github.com/opencontainers/image-spec
[openshift-home]: https://openshift.com
[redhat]: https://redhat.com "Red Hat the company. Acquired by IBM."
[rkt]: https://github.com/rkt/rkt
[simplish]: https://github.com/joshix/simplish
[simplish-theme-dir]: https://wordpress.org/themes/simplish/
[slides]: https://speakerdeck.com/joshix
[sp]: http://code.google.com/p/sp-theme
[utopian]: http://utopian.net
[utopian-wayback]: https://web.archive.org/web/20120103202637/http://utopian.net/
[utopian-labs-wayback]: https://web.archive.org/web/20111227182008/http://labs.utopian.net/
[wp]: https://wordpress.org
[wpmu]: https://codex.wordpress.org/WordPress_MU
