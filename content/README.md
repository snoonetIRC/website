# content

This directory contains the website's content.

## Creating a new page

```
% hugo new page-name.md
```

Pages are markdown files in this directory. They are stored in the top level
content directory so they have a top-level name on the website (i.e. `about.md`
would be `snoonet.org/about`). Here is a basic example "about" page:

```
---
title: "About"
date:  2018-12-30T22:22:55Z
draft: false
type:  page
---

# About

This is a page about our project.
```

The first section in the `---` block is YAML metadata for the page.

* `title`: The page's title
* `date`: The date the page was created
* `draft`: If true, the page will not be accessible on the live website
* `type`: This is a regular page, so it should be "page"

## Creating a new blogpost

Follow the date/name format for new posts:

```
% hugo new posts/20181230-post_name.md
```

