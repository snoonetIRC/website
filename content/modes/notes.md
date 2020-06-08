---
title: "Notes"
date: 2019-01-14T22:31:47Z
draft: false
type: "multipage-index"
weight: 2
---

## Auto-mode
`w [mode]:[n!u@h]`

Auto-mode allows you to automatically voice, op, or set other modes on users joining your channel. This is a powerful feature, that can replace the necessity for *some* bots

`[mode]` is one of the prefix modes, such as h for halfop, o for operator, or v for voiced.

Hostmask is any matching mask, including extbans

## Exempt Modes
`X [permission]:[mode]`

Exempt modes allows you to set more granular permissions, based on user modes
Example: /mode #channel +X censor:v will allow voiced users and higher to bypass the censorship(chanmode +g) filters

`[mode]` is one of the prefix modes, such as h for halfop, o for operator, or v for voiced.

`[permission]` is one of the following:

+ **topiclock:** permission required to change the topic if +t is set
+ **auditorium-vis:** permission required to always be visible in a `+u` channel
+ **auditorium-see:** permission required to see all the users in a `+u` channel
+ **blockcaps:** permission to send caps in a `+B` channel
+ **blockcolor:** permission to use color in a `+c` channel
<!-- + **censor:** permission to bypass censors in a `+G` channel -->
+ **filter:** permission to bypass channel-level filters in a `+g` channel
+ **flood:** Permission to bypass flood limits in a `+f` channel
+ **nickflood:** Permission to bypass nick flood limits in a `+F` channel
+ **noctcp:** Permission to send CTCPs in a `+C` channel
+ **nonick:** Permission to change nicks in a `+N` channel
+ **nonotice:** Permission to send notices in a `+T` channel
+ **regmoderated:** Permission to bypass `+R` and `+M`
+ **slowmode:** Permission to bypass the rate limit in a `+U` channel
+ **stripcolor:** Permission to bypass color stripping in a `+S` channel

