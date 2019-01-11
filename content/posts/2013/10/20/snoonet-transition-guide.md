--- 
date: 2013-10-20T02:34:00
draft: false
title: Snoonet transition guide
type: post
---

With the move to InspIRCd, Snoonet now offers channel operators and users more ways to control their chat experience, regardless of client. Some things will have changed since we moved from the old network, and in order to make the transition as pain-free as possible, we have prepared this guide to help. If you have any problems, please don't hesitate to drop by #help on irc.

This guide is broken down into multiple parts. Changes affecting channel operators are listed first, while user-level changes are listed second. Services are **not** changing, so this guide does not cover any services (eg Nickserv, Chanserv)

# Channel Modes
Most of the standard IRC channel modes will stay the same. Your bans will still work. Your invite exceptions *may* still work.

However, things depending on old network features, such as quiets and ext-bans (such as the account ban, commonly used for invite exceptions, `$a:Paradox` for example) will not. The features are not gone, don't worry, they just work differently now.

### Changes

### Quiets
Many channels used `+q` to maintain a list of users who are prevented from speaking in the channel, but may still join and leave freely. This mode has been removed on the new network, and has been replaced with an extended ban.

To quiet people on inspircd, you use the `m` extended ban. See the table below for some examples of how `q` bans on the old network become mute bans on the new network:

|                    Old                     |                  New                  |
| ------------------------------------------ | ------------------------------------- |
| `+q *!*@snoonet/operations/Paradox`        | `+b m:*!*@snoonet/operations/Paradox` |
| `+q *!*@192.168.1.1`                       | `+b m:*!*@192.168.1.1`                |
| `+q NickName!*@*`                          | `+b m:NickName!*@*`                   |
| `+q $~a` (quiets all non-registered users) | `+M` (not a ban, a chanmode)          |
| `+q $a:Paradox` (account ban)              | `+b m:R:Paradox`                      |

### Bans, Extbans, and Invite Exceptions (+b, +e, and +I)
Bans share many of the same syntax as quiets, which are listed above, and you can just omit the `m:` from the ban to make them apply as bans.

|        Name        |             Old              |       New       |
| ------------------ | ---------------------------- | --------------- |
| Registered user    | `$a`                         | `R:*`           |
| Account name       | `$a:AccountName`             | `R:AccountName` |
| Channel match      | `$c:#chan`                   | `j:#chan`       |
| Oper               | `$o`                         | `O:*`           |
| realname           | `$r:realname`                | `r:realname`    |
| Can access channel | `$j:#chan`                   | *n/a*           |
| Ban + realname     | `$x:nick!user@host#realname` | *n/a*           |
| SSL users          | `$z`                         | `z:*`           |


*Some extban changes introduce new features, while others can reproduce the old features using a combination of `+b` and `+e` modes. See the [Modes](/modes) page for details*

### Other modes
With the transition we have lost some modes, gained some new ones, and others have changed. They are listed below. If a mode is not listed, it should be the same

|         Name         | Old  |         New          |
| -------------------- | ---- | -------------------- |
| Registered Join only | `+r` | `R`                  |
| Strip color codes    | `+c` | `S`                  |
| Anyone can Invite    | `+g` | `A`                  |
| Light Moderated      | `+z` | *n/a*                |
| Forward              | `+f` | `+b *!*@*#otherchan` |
| Free Target          | `+F` | *n/a*                |

*Some channel mode changes introduce new features, while others are still possible using a combination of `+b` and `+e` modes with extbans. See the [Modes](/modes) page for details*

## New features

### Channel Modes
The network transition introduces many new modes for channel operators, which provide an unprecedented level of control over channels. They are listed below. This listing *excludes* modes previously listed. For a comprehensive, up to date list of modes, check out the [Modes](/modes) page

|          Name         |          Syntax         |                                             Description                                              |
| --------------------- | ----------------------- | ---------------------------------------------------------------------------------------------------- |
| Block Caps            | `+B`                     | Blocks all caps messages                                                                             |
| Block color           | `+c`                     | Blocks messages containing color codes                                                               |
| Delay Join            | `+D`                     | Hides join messages until a user speaks                                                              |
| Delay message         | `+d [sec]`               | Prevents a user from talking for `sec` seconds                                                       |
| Prevent Nickflood     | `+F [num]:[sec]`         | Allows only `num` nick changes every `sec` seconds                                                   |
| Prevent Message flood | `+f {*}[num]:[sec]`      | Allows only `num` messages every `sec` seconds. Bans if `*` is included                             |
| Censor                | `+G`                     | Uses the network-defined search and replace censor for channel messages                              |
| Custom Censor         | `+g [keyword]`           | Allows channel owners to block specific keywords from their channel. Uses glob syntax                |
| Channel History       | `+H [num]:[sec]`         | When a user connects, show the last `[num]` lines within `[sec]` seconds                             |
| Delay Kick rejoin     | `+J [sec]`               | Prevents a kicked user from rejoining the network until `[sec]` seconds has elapsed                  |
| Prevent Knock         | `+K`                     | Prevents users from KNOCKing to join the channel                                                     |
| Forward when full     | `+L [#chan]`             | When a channel reaches its `+l` limit, forwards users to the specified channel                       |
| No Nick Changes       | `+N`                     | Users cannot change Nicks in the channel                                                             |
| No Channel Kicks      | `+Q`                     | Disabled channel kicks from users. Doesn't include services                                          |
| No Notices            | `+T`                     | Blocks user notices in the channel                                                                   |
| Auditorium            | `+u`                     | Hides joins, parts/quits, and the nick list from non-opers. Great for large, active channels         |
| Auto-mode             | `+w [flag]:[banmask]`    | Automatically applies a flag (channel mode, i.e +o for op) to anyone who matches the banmask on join |
| Exempt chanops        | `+X [permission]:[mode]` | Exempts anyone with a matching user mode from permissions. See [Modes](/modes) for details           |
| SSL Only              | `+z`                     | Channel in which only SSL users may chat                                                             |

# User Modes
User modes are something most users don't have to worry about, but for your reference, here are the changes between the old network and the new. For more details, see the [User Modes](/umodes) page

|            Name            | Old  |  New  |
| -------------------------- | ---- | ----- |
| Deaf (no channel messages) | `+D` | `+d`  |
| Caller ID                  | `+g` | `+g`  |
| Invisible                  | `+i` | `+i`  |
| No Forwarding              | `+Q` | *n/a* |
| Block Unidentified         | `+R` | `+R`  |
| See wallops                | `+w` | `+w`  |
| Basic IP cloaking          | `+x` | `+x`  |

# Client-specific information
Quassel users may need to restart their core to properly see the new usermodes.