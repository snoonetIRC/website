---
title: "Modes"
date: 2019-01-14T22:31:47Z
draft: false
type: "multipage-index"
weight: 1
---

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
| Rate Limit              | `W [num]:[sec]`         | Prevents `[num]` or more messages in `[sec]`. Similar to `+f`, but only blocks messages when the rate is exceeded, instead of kicking.                                  |
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
