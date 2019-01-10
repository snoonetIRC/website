---
title: "Channel modes"
date: 2019-01-10T21:55:49Z
draft: false
type: page
---

Channel modes can be set by using the *mode* command. It looks like this: `/mode #channel +m`

Some modes take params, and their syntax is displayed next to their description.

Keep in mind modes **are** case sensitive. `+B` and `+b` are different

|          Name           |          Syntax         |                                                Description                                                                                                              |
| ----------------------- | ----------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Allow invite            | `A`                     | Allows anyone to invite anyone else to the channel.                                                                                                                     |
| Block Caps              | `B`                     | Block all caps lines from the channel                                                                                                                                   |
| No CTCP                 | `C`                     | Blocks CTCPs, other than ACTION, from the channel                                                                                                                       |
| Delay Join              | `D`                     | Hide JOINs until the user speaks                                                                                                                                        |
| Nick Flood              | `F [num]:[sec]`         | Allows only `[num]` nick changes every `[sec]`                                                                                                                          |
| Chan history            | `H [num]:[sec]`         | On join, replays the last `[num]` lines from within the last `[sec]` seconds to the connecting user                                                                     |
| Invite Exception        | `I n!u@h`               | Allows matching masks to have a permanent channel invite                                                                                                                |
| Kick Rejoin Delay       | `J [sec]`               | Disallows a user from rejoining the channel until `[sec]` seconds after a kick                                                                                          |
| No Knock                | `K`                     | Prevents KNOCK attempts against the channel                                                                                                                             |
| Redirect when full      | `L [#channel]`          | Forwards users to `[#channel]` when the channel limit is reached                                                                                                        |
| Registered only speech  | `M`                     | Prevents non-registered users from speaking                                                                                                                             |
| No Nicks                | `N`                     | Prevents Nick Changes for any user in the channel                                                                                                                       |
| Oper only               | `O`                     | Restricts a channel to only network operators                                                                                                                           |
| Permanent               | `P`                     | Channel will continue to exist even when empty and over server restarts                                                                                                 |
| No Kicks                | `Q`                     | Prevents any kicks. Does not affect services                                                                                                                            |
| Registered users only   | `R`                     | Only registered users may join the channel                                                                                                                              |
| Strip Color             | `S`                     | Strips color codes from messages in the channel, but allows the message through, sans colors                                                                            |
| No Notices              | `T`                     | Prevents any `NOTICEs` to be sent to the entire channel                                                                                                                 |
| Rate Limit              | `U [num]:[sec]`         | Prevents `[num]` or more messages in `[sec]`. Similar to `+f`, but only blocks messages when the rate is exceeded, instead of kicking.                                  |
| Exempt Modes            | `X [permission]:[mode]` | Gives users with `[mode]` additional permissions. See below                                                                                                             |
| Oper-join (prefix: `!`) | `Y [nick]`              | Marks a staff member on official business, can only be set by an oper                                                                                                   |
| Dummy List              | `Z`                     | A dummy mode used by `m_namedmodes.so` allowing you to view the current channel modes as named modes. `/mode #channel Z` will output the list, same as `/prop #channel` |
| Ban                     | `b n!u@h`               | Bans the matching mask from the channel                                                                                                                                 |
| Block Color             | `c`                     | Blocks color lines from the channel                                                                                                                                     |
| Delay Msg               | `d [sec]`               | Prevent a user from speaking for `[sec]` seconds after joining                                                                                                          |
| Ban Exception           | `e n!u@h`               | Exempt a mask from a `+b` that would otherwise affect them                                                                                                              |
| Message Flood           | `f {*}[num]:[sec]`      | Allow `[num]` messages every `[sec]`. If you add the `*`, it will ban the user if they go over this limit                                                               |
| Channel Filter          | `g [keyword]`           | Allows channel ops to block specific keywords from their channels. Uses a basic GLOB syntax                                                                             |
| Halfop (prefix: `%`)    | `h [nick]`              | Gives a user Half-op. Half-ops can do everything but op other users                                                                                                     |
| Invite only users       | `i`                     | Makes a channel invite only                                                                                                                                             |
| Join Throttle           | `j [num]:[sec]`         | Allow only `[num]` joins every `[sec]` seconds                                                                                                                          |
| Channel Key             | `k [key]`               | Sets the pass key required to join a channel                                                                                                                            |
| Channel Limit           | `l [num]`               | Prevents more than `[num]` users from joining the channel                                                                                                               |
| Moderated               | `m`                     | Prevents non-voiced users from speaking                                                                                                                                 |
| No outside messages     | `n`                     | Prevents users not on the channel from sending messages to the channel                                                                                                  |
| Op (prefix: `@`)        | `o [nick]`              | Op the user matching `[nick]`                                                                                                                                           |
| Private                 | `p`                     | Channel will not show up in `/LIST`, but *will* show up in user's `WHOIS`                                                                                               |
| Registered              | `r`                     | Marks a channel as registered with services                                                                                                                             |
| Secret                  | `s`                     | Hides the channel from both `/LIST` and `/WHOIS`.                                                                                                                       |
| Topiclock               | `t`                     | Prevents users without +h or +o from changing the topic.                                                                                                                |
| Auditorium              | `u`                     | Users can only see their own nick and the nicks of operators in the nick list for the channel.                                                                          |
| Voice (prefix: `+`)     | `v [nick]`              | Voices the nick provided                                                                                                                                                |
| Auto Mode               | `w [mode]:[n!u@h]`      | Automatically gives users matching the mask the flag. See below                                                                                                         |
| Global Message Flood    | `x [num]:[sec]`         | Snoonet custom mode which will notify opers of a channel flood                                                                                                          |
| SSL users only          | `z`                     | Prevents users who aren't connected to the network using SSL from joining                                                                                               |

# Notes

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

# See Also

+ [User Modes](/umodes)
+ [Extended Ban Syntax](/extbans)
