# Joshix.com New Underneath (`jxnu`)

Work in progress. Move the same old content to new infrastructure.

Markdown source, config, and tools for the [joshix.com][jx] web site container image. This container is built FROM the [caddybox web server image][caddybox], then adds HTML content generated by [Hugo][hugo].

##  Generate joshix.com app container image

### Edit site content or style

1. Run `hugo` to update `public/`
2. `git push` to trigger build on Quay
3. restart service on joshix.com

### New caddy->caddybox version

1. New caddybox tag triggers build at Quay
2. update Dockerfile `FROM` with desired caddybox tag, e.g., `quay.io/josh_wood/caddy:v0.10.3`
3. Push jxnu to trigger build
4. Update joshix.com:/etc/systemd/system/jxnu.service (unless set for :latest)

## Legal

Methods, tools, and scripts are shared under the ASL or their own license. Text and images beneath `content/` and/or as published on joshix.com are Copyright (C) 2000-2017 Josh Wood, except where noted. All rights reserved.


[caddybox]: https://github.com/joshix/caddybox
[hugo]: https://gohugo.io/
[jx]: https://joshix.com/
