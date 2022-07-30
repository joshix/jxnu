# Joshix.com New Underneath (`jxnu`)

Move the same old content to new infrastructure.

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

Run `hugo` with a temporary `baseURL` to compile the site. Serve the result with `firebase serve`:

```sh
cd /path/to/jxnu
hugo [-DF] --baseURL http://localhost:5005/
firebase serve
```

## Deploy the site

Run hugo to compile the site. Deploy the result to Firebase Hosting:

```sh
cd /path/to/jxnu
rm -rf public
hugo
firebase deploy
```

### Redirects

See [firebase.json][firebase.json].

## Legal

Methods, tools, and scripts are shared under the ASL or their own license. Text and images beneath `content/` and/or as published on joshix.com are Copyright (C) 2000-2022 Josh Wood, except where noted. All rights reserved.

[firebase-cli]: https://firebase.google.com/docs/cli#install_the_firebase_cli
[firebase.json]: firebase.json
[hugo]: https://gohugo.io/
[jx]: https://joshix.com/
[nodejs]: https://nodejs.org/
