---
author: Josh Wood
blogimport: true
date: 2011-04-22T20:10:00Z
draft: true
tags:
- mb
- plan9
- microblog
- microbe
- rc
title: Loopy, mb.
updated: 2013-05-24T01:34:26Z
---

This example <em>rc</em>(1) function periodically invokes <em>mb/read</em> to print notices. You could do same in <em>cron</em>(8); could rig it to send you a txt msg or a singing telegram. Wrapper script. [ ... ] &amp; etc.

Other 9-ish clients implement similar functions directly to provide a "daemon" mode.

```
% fn mbrdd {while (){/bin/mb/read;sleep 300}}
% mbrdd
"microBlogReadDaemon": Dents delivered every 5 minutes.
```
