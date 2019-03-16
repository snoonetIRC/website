---
title: "InspIRCd help system"
date: 2019-01-10T22:03:45Z
draft: false
type: page
---

#### InspIRCd Help System Categories:

**[User Commands](#User Commands)**

**[User modes](umodes)**

**[Channel modes](/modes)**

**[Extended Bans](/extbans)**

---

**Key**: 

`<these brackets>` denote required information.

`{these brackets}` denote that you may pick one of the options presented.

`[these brackets]` denote entirely optional parameters.

---
---

<a name="User Commands"></a> 


# User Commands
*[back to top](#top)*

**General User Command Help:**

`/helpop CUSER`

*This will list user commands. To see the detailed instructions for a command type `/helpop [COMMAND]`. Without a [COMMAND] parameter, this will list all /helpop commands and descriptions.

---

*To change your nickname on Snoonet to a new nick type:*

`/NICK <newnick>`

---

*To join a channel type:*

`/JOIN <channel>`

To join two or more channels type:*

`/JOIN <channel>,<channel>`

---

*To leave a channel type:*

`/PART <channel>`

*To leave two or more channels type:*

`/PART <channel>,<channel>`

---

*To cycle (leave and rejoin) a channel type:*

`/CYCLE <channel`

This overrides restrictions that would stop a new user joining, such as user limits and channel keys.

---

*To send a message to a user or channel specified in <target> type:*

`/PRIVMSG <target> <text>`

---

*To send a notice to a user or channel specified in <target> type:*

`/NOTICE <target> <text>`

---

*To send a notice to a channel, such as one that is set it invite-only, indicating that you would like to join type:*

`/KNOCK <channel> [message to channel]`

---

*To set the mode for a channel or a nickname specified in <target> type:*

`/MODE <target> {+|-}<modes>[{+|-}<modes>] [mode parameters]`

A user may only set modes upon themselves, and may not set the +o usermode. A user may only change channel modes of channels where they are at least a halfoperator. 

A list of  *[User modes](umodes)*


A list of  *[Channel modes](/modes)*

---

*To devoice yourself from a specified channel type:*

`/DEVOICE <channel>`

---

*To retrieve a channel topic type:*

`/TOPIC <channel>`

*To set a channel topic you must be either halfoperator, or the channel mode must be set to +t. To change the channel topic to one you provide type:*

`/TOPIC <channel> <topic>`

---

*To kick a user from a channel type:*

`/KICK <channel> <nick> [reason]`

You must be at least a halfoperator to kick a user from a channel.

---

*To remove a user from a channel type:*

`/REMOVE <nick> <channel> [reason]`

You must be at least a halfoperator to remove a user from a channel. A removed user will part with a message stating they were removed from the channel and by whom. This command overrides auto-rejoin. 

---

*To force-part a user from a channel type:*

`/FPART <channel> <nick> [reason]`

This command behaves identically to /REMOVE, the only difference being the <channel> and <nick> paramaters are switched around to match /KICK's syntax. You must be at least a halfoperator to remove a user from a channel. A removed user will part with a message stating they were removed from the channel and by whom. This command overrides auto-rejoin. 

---

*To set a timed ban type:*

`/TBAN <channel> <duration> <banmask>`

The duration of the ban can be specified in the following format: 1w2d3h4m6s which indicates a ban of one week, two days, three hours, four minutes and six seconds. Alternatively the ban may just be specified as a number of seconds. All timed bans appear in the banlist as normal bans and may be safely removed before their time is up.

---


*To invite a user to a channel type:*

`/INVITE <nick> <channel> [time]`

If the channel is NOT set to mode +A, only channel halfoperators or above can invite people. If +A is set, anyone can invite people to the channel, as long as the person doing the invite is a member of the channel they wish to invite the user to.

If a time is provided, the invite expires after that time and the user can no longer use it to enter the channel.

---

*To uninvite a user from a channel type:*

`/UNINVITE <nick> <channel>`

---

*To set away status and an away message type:*

`/AWAY <message>`

*To remove previously set status and message type:*

`/AWAY`

---

*To add or delete a nickname from your DCCALLOW list type:*

`/DCCALLOW {+|-} <nick> <duration>`

This list allows user to send you files via DCC. 

---

*To list hostmarks that you have silenced type:*

`/SILENCE`

Silence is a serverside ignore of the given n!u@h hostmask.

*To add a hostmask to your silence list type:*

`/SILENCE {+|-}<hostmask> {p|c|i|n|t|a|x}`

The letter(s) at the end specify what is to be ignored from this hostmask. 

| Flag| Description |
|---|---------------------------------|
| p | Block private messages |
| c | Block channel messages |
| i | Block invites |
| n | Block private notices |
| t | Block channel notices |
| a | Block all of the above |
| x | Exception |

Multiple letters may be specified. For an exception, you must pair x with what you want excepted. For example, if you wanted to except everything from people with a host matching *.foo.net, you would do /SILENCE +*!*@*.foo.net xa 

---

*To display your accept list type:*

`/ACCEPT *`

This list is used to determine who can private message you when you have usermode +g set.

*To add a user to your accept list type:*

`/ACCEPT + <nick>`

*To remove a user from your accept list type:*

`/ACCEPT - <nick>`

To add or remove more than one nick at a time, separate them with a comma and space (nick, nick). 

---

*To encodes the plaintext to a hash of the given type and display the result type:*

`/MKPASSWD <hashtype> <plaintext>`

---

*To authenticate for a vhost using the specified username and password type:*

`/VHOST <username> <password>`

---

*To authenticate for a WHOIS title line, and optionally a vhost, type:*

`/TITLE <name> <password>`

---

*To set your name type:*

`/SETNAME <name>`

---
---

# User Modes
*[back to top](#top)*

**General User Modes Help:**

`/helpop UMODES`

*This will list user mode commands. To see the detailed instructions for a command type `/helpop [COMMAND]`. Without a [COMMAND] parameter, this will list all /helpop commands and descriptions.

Full list of [user modes](umodes) listed here. 

---
---

# Channel Modes
*[back to top](#top)*

**General Channel Modes Help:**

`/helpop CHMODES`

*This will list channel modes commands. To see the detailed instructions for a command type `/helpop [COMMAND]`. Without a [COMMAND] parameter, this will list all /helpop commands and descriptions.

Full list of [channel modes](/modes) listed here. 

---
---

# Extended Bans
*[back to top](#top)*

**General Extended Bans Help:**

`/helpop EXTBANS`

*This will list extended bans commands. To see the detailed instructions for a command type `/helpop [COMMAND]`. Without a [COMMAND] parameter, this will list all /helpop commands and descriptions.

Full list of [extended Bans](/extbans) listed here. 

---
---

