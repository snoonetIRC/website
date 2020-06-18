# snoonet.org: Static Edition

[![Build Status](https://travis-ci.com/snoonetIRC/website.svg?token=gYMH5xbdyKUF8TLkCQnc&branch=master)](https://travis-ci.com/snoonetIRC/website)
![GitHub commits since latest release](https://img.shields.io/github/commits-since/snoonetIRC/website/latest.svg)

## Getting Started

See the [Hugo documentation](https://gohugo.io/getting-started/) for
installation details. **The extended version is required for SCSS support, which
our site uses.**

### Installing Hugo (Linux)

If you're on Linux and you have Go installed, you can run the following command
to install Hugo extended edition from Git:

```bash
./scripts/install-hugo.sh
```

### Running the dev server

To start the dev server in watch mode (automatically recompiling your HTML and
CSS), run the following command in the project root:

```bash
hugo server
```

## Deployment

Deployment is automatic. Once changes are merged into master, the site is
deployed to staging on [GitHub Pages](https://staging.snoonet.org). Creating a
new tag triggers a build which attaches a tarball to the release, which is
pulled automatically to the live webserver.

See `.travis.yml` for the exact build and deploy configuration.

