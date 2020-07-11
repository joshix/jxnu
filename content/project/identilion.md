---
author: Josh Wood
date: 2009-06-15T21:37:28-07:00
description: iOS µblog app
draft: false
tags:
- Twitter
- Identi.ca
- Status.net
- OMB
- iPhone
- microblog
title: Identilion
type: page
---

"Identilion" began as a five minute hack to make [NatsuLiphone][ntlniph], an open source iOS Twitter client, work with our federated [Statusnet][statusnet] instance at [Utopian.net][utopian]. It took about 2 minutes to change the URL strings, the other 3 to rename things so that both apps could run on the same iPhone. My mutant version was originally referred to as *Lionica*, a name that persists in the [branch for the Identilion source code][lionica-branch].

Identilion evolved to connect to any Twitter-compatible API, rather than being hardwired to a single service. This choice of Twitter-alike web services does not include Twitter itself, because Identilion doesn’t support OAuth. OAuth code exists but is not enabled.

The last builds carry version number 1.51.5, the fifth revision of a fork from NatsuLiphone v1.51. Identilion is no longer in use and is not maintained. [Screenshots][screens] give a flavor of the user interface and the API server settings.

![Account](/img/identilion/screens/2-account.png "Account")
![Reading](/img/identilion/screens/3-read.png "Reading")
![Writing](/img/identilion/screens/4-write.jpg "Writing a reply")

[lionica-branch]: https://github.com/joshix/identilion/tree/lionica
[ntlniph]: https://github.com/takuma104/ntlniph
[ntlniph-forkrev]: https://github.com/takuma104/ntlniph/commit/aeecaa177136d8b541d3e176a6ec05dc2965cc72
[screens]: /project/identilion/screens/
[statusnet]: http://gnu.org/software/social/
[utopian]: http://utopian.net
