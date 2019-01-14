---
title: "Extended bans"
date: 2019-01-10T21:57:32Z
draft: false
type: page
---

Extbans come in two flavors on Snoonet. Matching and Acting extbans. Matching extbans match users based on a series of criteria, and can be used anywhere that accepts a hostmask. Acting extbans, though, can only be used with `+b` and `+e` chanmodes. An `+e` chanmode will *always* take precedence over a `+b` chanmode

# Matching Extbans

|       Name       |        Syntax         |                                       Effect                                      |
| ---------------- | --------------------- | --------------------------------------------------------------------------------- |
| Oper             | `O:[operlevel]`       | Matches the opertype. Can accept wildcards for all opers                          |
| Account          | `R:[account]`         | Matches the service account. Accepts a wildcard                                   |
| Unregistered     | `U:[ban]`             | Matches an unregistered user who matches the [ban]                                |
| Channel          | `j:[state][#channel]` | Matches a user in the channel. State defines the user's level, such as +, %, or @ |
| Gecos (realname) | `r:[gecos]`           | Matches against the gecos (real name field)                                       |
| Server           | `s:[server]`          | Matches against all users on the servername                                       |
| SSL Fingerprint  | `z:[fingerprint]`     | Matches against all users with the ssl fingerprint. Accepts a wildcard            |

# Acting Extbans

|   Syntax  |                                    Effect                                   |
| --------- | --------------------------------------------------------------------------- |
| `A:[ban]` | Blocks matching users from using `/INVITE`                                  |
| `B:[ban]` | Disallows matching users from using ALL CAPS.                               |
| `C:[ban]` | Blocks CTCPs from matching users.                                           |
| `N:[ban]` | Disallows matching users from changing their nickname while in the channel. |
| `Q:[ban]` | Disallows /KICK from matching users.                                        |
| `S:[ban]` | Strips control codes from messages matching users.                          |
| `T:[ban]` | Disallows NOTICEs from matching users to the channel                        |
| `c:[ban]` | Blocks messages from matching users if they contain color codes.            |
| `m:[ban]` | Blocks messages to the channel from matching users.                         |
| `p:[ban]` | Hides part messages from matching users.                                    |

