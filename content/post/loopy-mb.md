+++
title = "Loopy, mb."
date = 2011-04-22T20:10:00Z
updated = 2013-05-24T01:34:26Z
tags = ["mb", "plan9", "microblog", "mb/write", "Tech", "rc"]
draft = true
blogimport = true 
[author]
	name = "Joshua Wood"
	uri = "https://plus.google.com/106633459976108137947"
+++

This example <em>rc</em>(1) function periodically invokes <em>mb/read</em> to print notices. You could do same in <em>cron</em>(8); could rig it to send you a txt msg or a singing telegram. Wrapper script. [ ... ] &amp; etc.<br/><br/>Other 9-ish clients implement similar functions directly to provide a "daemon" mode.<br/><pre>% fn mbrdd {while (){/bin/mb/read;sleep 300}}<br/>$ mbrdd<br/>"microBlogReadDaemon": Dents delivered every 5 minutes.<br/>...</pre>
