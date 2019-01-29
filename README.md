# snoonet.org: Static Edition

[![Build Status](https://travis-ci.com/snoonetIRC/static-web.svg?token=gYMH5xbdyKUF8TLkCQnc&branch=master)](https://travis-ci.com/snoonetIRC/static-web)

The current Snoonet website converted to use a static site generator
([Hugo](https://gohugo.io/)).

## Getting Started

See the [Hugo documentation](https://gohugo.io/getting-started/) for
installation details. **The extended version is required for SCSS support, which
our site uses.**

### Installing Hugo (Linux)

If you're on Linux and you have Go installed, you can run the following command to install Hugo extended edition from Git:

```bash
./scripts/install-hugo.sh
```

### Running the dev server

To start the dev server in watch mode (automatically recompiling your scripts), run the following command in the project root:

```bash
hugo server
```

## Deployment

Deployment is automatic. Once changes are merged into `master`, they will automatically be deployed to https://snoonet-beta.chary.us/

See `.travis.yml` for the exact build and deploy configuration.
