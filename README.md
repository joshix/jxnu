# Joshix.com New Underneath (`jxnu`)

Markdown source and configuration for the [joshix.com][jx] web site.

## Prerequisites

* [Hugo][hugo] static site generator
* [`firebase`][firebase-cli] tool

## Change and test the site

### With hugo web server

`Hugo serve` automatically overrides `baseURL` and recompiles the site when a file changes. Under `-D`, build drafts. Under `-F`, build future dates.

```sh
hugo [-DF] serve
```

### With firebase web server

Run `hugo` with a temporary `baseURL` to compile the site. Serve the result with `firebase serve`.

```sh
cd /path/to/jxnu
hugo [-DF] --baseURL http://localhost:5005/
firebase serve
```

## Deploy the site

Run hugo to compile the site. Deploy the result to Firebase Hosting.

```sh
cd /path/to/jxnu
rm -rf public
hugo
firebase deploy
```

### Firebase Redirects

See [firebase.json][firebase.json].

## Images

### Markdown (no float styling in theme css)

```markdown
![OpenShift for Developers, 2e, book cover][coverimg]
```

See the [source][scrubjay-src] and [rendered][scrubjay] scrub jay post for an example.

### Inline HTML to wrap text around the image

```html
<img src="/img/openshift-book-cover.jpg" alt="OpenShift for Developers, 2e, book cover" style="float: right; margin: 0 40px 40px 40px;">
```

See the [source][openshift-book-post-src] and [rendered][openshift-book-post] OpenShift book announcement post for an example.

## Legal

Methods, tools, and scripts are shared under the ASL or their own license. Text and images beneath `content/` and/or as published on joshix.com are Copyright (C) 2000-2025 Josh Wood, except where noted. All rights reserved.

[firebase-cli]: https://firebase.google.com/docs/cli#install_the_firebase_cli
[firebase.json]: firebase.json
[hugo]: https://gohugo.io/
[jx]: https://joshix.com/
[openshift-book-post]: https://joshix.com/2021/09/25/openshift-book-released/
[openshift-book-post-src]: content/post/openshift-book-released.md
[scrubjay]: https://joshix.com/2009/09/25/scrub-jay/
[scrubjay-src]: content/post/scrub-jay.md
