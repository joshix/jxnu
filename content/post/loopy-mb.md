---
author: Josh Wood
blogimport: true
date: 2011-04-23T20:10:00-08:00
draft: false
tags:
- mb
- Plan 9
- microblog
- microbe
- rc
- Twitter
title: Loopy mb
updated: 2020-06-20T01:34:26Z
---

This *rc*(1) function periodically invokes [*mb/read*](/project/mb/)
to print tweets.

```sh
$ fn mbrdd {while (){/bin/mb/read;sleep 300}}
$ mbrdd
"microBlogReadDaemon": Dents delivered every 5 minutes.
```
