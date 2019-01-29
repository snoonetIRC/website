---
title: "ChanServ"
date: 2019-01-14T22:31:47Z
draft: false
type: multipage-index
weight: 3
---

**General ChanServ in-network help:**

`/msg ChanServ HELP [COMMAND]` 

*Without a [COMMAND] parameter, this will list the ChanServ commands and descriptions. If you fill in the [command] parameter it will give you detailed instructions on that command.*

---

**Register a channel:**

`/msg ChanServ REGISTER <channel> [description]` 

---

**Cancel the registration of a channel:**

`/msg ChanServ DROP <channel> <channel>` 

*Note: enter the same channel name twice. You can only do this if it is YOUR channel or you have a Snoonet admin do it for you.*

---

**List information about a registered channel:**

`/msg ChanServ INFO <channel>` 

*This includes its founder, time of registration, and last time used. If the user issuing the command has the appropriate access for it, then the description, successor, last topic set, settings and expiration time will also be displayed when applicable.*

---

**Invite someone to a channel:**

`/msg ChanServ INVITE <channel> <nick>` 

*Note: You can invite yourself into a channel if you have the correct flags in that channel.

---

**Set an entry message for a channel**

`/msg ChanServ ENTRYMSG <channel> ADD <message>`

---

**Remove an entry message for a channel**

`/msg ChanServ ENTRYMSG <channel> CLEAR`

---

**Kick a user:**

`/msg ChanServ KICK <channel> {nick | mask} [reason]` 

or

`!kick {nick | mask} [reason]` 

*Kicks a specified nick from a channel. You may kick by username or by hostmask.*

---

**Ban a user:**

`/msg ChanServ BAN <channel> [+expiry] {nick | mask} [reason]`

or

`!ban {nick | mask} [reason]` 

*Bans specified nick from a channel. You may ban by username or by hostmask.*

---



`/msg ChanServ UNBAN <channel> [nick]` Remove all bans preventing a user from entering a channel

or

`!unban {nick | mask} [reason]` 

---

**View user flags:**


`/msg ChanServ FLAGS <channel> LIST [mask | +flags]`

or

`!flags {nick | mask} [reason]` 

---

**Clear all flags:**

`/msg ChanServ LIST channel CLEAR`

---

**Add user flags:**

`/msg ChanServ FLAGS channel MODIFY <username or hostmask> <+/- changes>`

or

`!flags modify {nick | mask} [reason]` 

For example `/msg ChanServ FLAGS #snoonet modify *!*@snoonet/* +Bc` will set all Snoonet staff to be allowed to use Botserv SAY and ACT commands, as well as grant them the ability to use fantasy commands.

| Flag   | Use |
|---|---------------------------------|
|`b` | Allowed to ban users |
|`B` | Allowed to use SAY and ACT commands |
|`c` | Allowed to use fantasy commands |
|`f `| Allowed to modify or view the access list |
|`F` | Allowed to issue commands restricted to channel founders |
|`G` | Allowed to use GETKEY command |
|`g` | Greet message displayed on join |
|`H` | Automatic halfop upon join |
|`h` | Allowed to (de)halfop users and him/herself |
|`I` | Allowed to get full INFO output |
|`i` | Allowed to use the INVITE command |
|`K` | Allowed to use the AKICK command, modify badwords list |
|`k` | Allowed to use the KICK command |
|`m` | Allowed to read channel memos |
|`N` | Prevents users being kicked by Services |
|`O` | Automatic channel operator status upon join |
|`o` | Allowed to (de)op users and him/herself |
|`s` | Allowed to assign/unassign a bot, use MODE commands and set channel settings |
|`t` | Allowed to change channel topics |
|`u` | Allowed to unban users |
|`V` | Automatic voice on join |
|`v` | Allowed to (de)voice users and him/herself |

You can also view the list of users that have access in a given channel by using `/msg ChanServ ACCESS <channel> list`

To find out more about the access list and levels, type `/msg ChanServ HELP ACCESS`

Additionally, if you are curious as to what channels you have access flags for, type `/msg NickServ LISTCHANS`

## Stats

To turn on/off stats tracking for your channel:

`/msg ChanServ  SET chanstats #channel on/off`

`/msg ChanServ STATS [channel]` Displays your Channel Stats

`/msg ChanServ TOP [channel]` Displays the top 3 users of a channel

`/msg ChanServ TOP10 [channel]` Displays the top 10 users of a channel

`/msg ChanServ GSTATS` Displays your Global Stats.

`/msg ChanServ GTOP` Displays the top 3 users of the network

`/msg ChanServ GTOP10` Displays the top 10 users of the network

To opt out of statistics:

`/msg NickServ SET chanstats off`

