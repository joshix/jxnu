---
author: Josh Wood
date: 2011-04-22T18:07:17-08:00
description: Updates to the Plan 9 twitter client
draft: false
tags:
- mb
- microblog
- Plan 9
- rc
- Twitter
title: YATC, mb(1) "microbe" updated
type: post
---

I updated the simple Plan 9 microblogging scripts, [*mb*(1)][mb], not often but
sometimes also called "microbe", and almost never known as "*meekroh-bee*".

All file and environment variable names have changed since the last release
(c.2009, AD), replacing the "special" character *micro* (HTML’s `&micro;`, &micro;, µ)
with a plain *m*.

The `awk | sed` filter pipeline at the center of any useful improvement was taken
from [Stanley Lieber’s tw][tw] Twitter script.

## *mb/read* changes

* Uses XML API
* Changed output order: now oldest-first. A feature, especially in
  [*acme*(1)][man-acme].
  Get the old school, newest-first ordering by appending, e.g.,
  `| sed 'x;1!H;$!d;x'`.
* No timestamps shown
* No “from client” source tag shown
* Directory moved from `/rc/bin/µb/` to `/rc/bin/mb/`
* Environment variables renamed:
  * `µblog` to `mbapiurl`
  * `µsr` to `mbuser`

## *mb/write* changes

Trivial. Write always spoke API, so the the changes were limited, syncing env names, etc.

## Example: Twitter

A side effect of proper API use gives mb/read ready access to Twitter timelines through services like the Supertweet API proxy.

To use the Supertweet service, visit their site to OAuth‘orize a Supertweet account to your Twitter account. You must then assign a password to your Supertweet account that will be used for HTTP Basic auth to the API proxy. You can then mb/read and mb/write Twitter:

Say it:

```
mb/write -h http://api.supertweet.net/1 Hello World.
```

See it:

```
mb/read -h http://api.supertweet.net/1
```

You’ll be asked for the proxy name and password you created at Supertweet unless it is available from [*factotum*(4)][man-factotum].


[man-acme]: https://plan9.bell-labs.com/sys/man/1/acme
[man-factotum]: https://plan9.bell-labs.com/sys/man/4/factotum
[mb]: /project/mb/
[tw]: http://plan9.stanleylieber.com/rc/tw
