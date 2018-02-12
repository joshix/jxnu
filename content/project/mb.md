---
author: Josh Wood
date: 2009-09-07T01:32:28-08:00
description: Plan 9 Twitter client
tags:
- Plan 9
- mb
- twitter
- microblog
title: mb(1) - microbe
type: page
---

*Mb* -- [New version, new name][mb-update-post], 2011-04-22

Elaborations on the theme of [anothy's original *tweet*][anothy-tweet]. Occasionally useful as prototype API poking sticks during development of larger clients for other systems — and of course to keep up with the web joneses from the comfort and safety of Plan 9.

These files are available in the Bell Labs Plan 9 sources contrib area, i.e., [`/n/sources/contrib/josh/rc/mb`][p9contrib-mb].

### NAME

read, write – simple microblogging

### SYNOPSIS

`mb/read [ –pr ] [ –h url ] [ user ]`  
`mb/write [ –d ] [ –h url ] [ text ... ]`

### DESCRIPTION

These `rc(1)` scripts are simple clients for reading and writing on microblogs; that is, short message publication services that implement the so–called Twitter API.

`Read` prints on the standard output a microblog user `user`'s "Personal Timeline" at the API root URL `url`. In the absence of `–h`, the value of the environment variable `mbapiurl`, if any, is used. If no `user` is given, the environment variable `mbuser` is consulted. If `$mbuser` is in turn empty, `$user` is presumed as the remote user name. Under `–r`, `read` prints only replies sent to the `user`. Option `–p` prints the entire "Public Timeline".

`Write` publishes text to the microblog service at the API root `url`. If `–h` is omitted, `write` uses the value of the environment variable `mbapiurl` for the service URL. If `text` is not given, a single line is read from standard input. The `–d` flag prints the server response (in XML format) on standard error.

Both programs query `factotum(4)` for authentication as needed.

### EXAMPLE

Read the Identi.ca home timeline of screenname `glenda`:

`mb/read –h https://identi.ca/api glenda`

Read the Twitter home timeline of the authenticated user:

`mb/read –h http://api.supertweet.net/1`

### SOURCE

`/rc/bin/mb`

### SEE ALSO  

`hget(1)`, `read` in `cat(1)`  
http://status.net, "StatusNet"  
http://apiwiki.twitter.com, "Twitter API Wiki"   
http://www.supertweet.net, "Twitter API Proxy"

### DIAGNOSTICS  

Write refuses text <1 or >140 runes, exiting with status `length`.

### BUGS

The `user` argument and the `mbuser` environment variable have no effect when reading Twitter via the known API proxy, which exposes only an authenticated user's timelines.


[anothy-tweet]: http://plan9.bell-labs.com/sources/contrib/anothy/bin/rc/tweet
[mb-update-post]: ../../2011/04/22/microbe-updated/
[p9contrib-mb]: http://plan9.bell-labs.com/sources/contrib/josh/rc/mb/
