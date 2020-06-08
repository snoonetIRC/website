---
title: "SubWatch"
aliases: [SubWatch]
date: 2019-01-14T21:38:22Z
draft: false
type: "page"
---

SubWatch is a thread announcer bot, it will alert the channel of new threads posted in subreddits of your choosing. It's able to watch private subreddits and announce threads based on keywords in the title.

You can view the source code [here](https://github.com/Dissimulate/SubWatch).

If you need assistance, you can `/join #subwatch` and ask for help.

---

## How do I get SubWatch in my channel?

**/invite SubWatch** - If you are a channel operator or have invite privileges, just /invite SubWatch to your channel as you would any other user.

---

## What are the commands?

**$add \<subreddit\> +/-[keywords] [subreddit] etc...**

This will add a new subreddit to be watched in the channel. Keywords are optional and must be separated with "|". If the subreddit has already been added, you can use this command to add new keywords to the list.

Example: `$add pics +puppy +kitten -rabbit` will post new threads from /r/pics if they have "puppy" or "kitten" in the title, but not "rabbit".

**$del \<subreddit\> +/-[key|words] [subreddit] etc...**

This will remove a subreddit from the channel's watch list. If keywords are specified, they will be removed from the keyword list and the subreddit will continue to be watched on the channel.

**$list**

This will list the subreddits currently being watched on the channel, along with any keywords that have been set.

**$stop/$start**

This will pause and unpause SubWatch on the channel.

**$clear**

This will clear the watch list for the channel.

**$help**

This will print the command usage in the channel.



**Note:** you must have +o or +h in the channel to use add/del/stop/start/clear.

---

## How to add private subreddits

**-** Add [/u/SnoonetSubWatch](http://reddit.com/u/SnoonetSubWatch) as an approved submitter to the subreddit.

**-** Create a wiki page at /r/[subreddit]/wiki/subwatch and add the name of the channel to grant permission. You can separate multiple channels with a comma, the content of the page for a single channel should simply be `#channelname`.

**-** Make sure the wiki isn't disabled on the subreddit.

**-** Add the subreddit as normal.

