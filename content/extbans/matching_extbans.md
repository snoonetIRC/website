---
title: "Matching Extbans"
date: 2019-01-14T22:31:47Z
draft: false
type: multipage-index
weight: 1
---

|       Name       |        Syntax         |                                       Effect                                      |
| ---------------- | --------------------- | --------------------------------------------------------------------------------- |
| Oper             | `O:[operlevel]`       | Matches the opertype. Can accept wildcards for all opers                          |
| Account          | `R:[account]`         | Matches the service account. Accepts a wildcard                                   |
| Unregistered     | `U:[ban]`             | Matches an unregistered user who matches the [ban]                                |
| Channel          | `j:[state][#channel]` | Matches a user in the channel. State defines the user's level, such as +, %, or @ |
| Gecos (realname) | `r:[gecos]`           | Matches against the gecos (real name field)                                       |
| Server           | `s:[server]`          | Matches against all users on the servername                                       |
| SSL Fingerprint  | `z:[fingerprint]`     | Matches against all users with the ssl fingerprint. Accepts a wildcard            |

