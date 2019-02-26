---
title: "BotServ"
date: 2019-01-14T22:31:47Z
draft: false
type: multipage-index
weight: 4
---

**General BotServ in-network help:**

`/msg BotServ HELP [COMMAND]` 

*Without a [COMMAND] parameter, this will list the BotServ commands and descriptions. If you fill in the [command] parameter it will give you detailed instructions on that command.*

---

**Botlist:**

`/msg BotServ BOTLIST`

*Lists all available bots on Snoonet.*

---

**BotServ Info:**

`/msg BotServ INFO {channel | nickname}`

*Allows you to see BotServ information about a channel or a bot. If the parameter is a channel, then you'll get information such as enabled kickers. If the parameter is a nick, you'll get information about a bot, such as creation time or number of channels it is on.*

---

**Assign a bot:**

`/msg BotServ ASSIGN <channel> <nick>`

*Assigns a bot to a channel. You can then configure the bot for the channel so it fits your needs. You can only assign one bot through BotServ at a time.* 

---

**Configure bot options:**

`/msg BotServ SET <option> (channel | bot) <settings>`

*For more information on a particular option and its settings, type `/msg BotServ HELP set <option>`.*

| Set  | Use |
|---|---------------------------------|
| BANEXPIRE | Configures the time bot bans expire in |
| DONTKICKOPS | Protects ops against bot kicks |
| DONTKICKVOICES | Proctects voices against bot kicks |
| FANTASY  | Enables fantaisist commands |
| GREET  | Enables greet messages |
| NOBOT  | Prevents a bot from being assigned to a channel |
| PRIVATE | Prevents a bot from being assigned by non IRC operators |

---

**Configure kickers:**

`/msg BotServ KICK <option> <channel> {ON|OFF} [settings]`

*For more information on a particular option and its settings, type `/msg BotServ HELP kick <option>`*

| Kick | Use |
|---|---------------------------------|
| AMSG | Allows bot to kick users who send the same message to multiple channels where BotServ bots are. |
| BADWORDS | Allows bot to kick users who say certain words on the channels. |
| BOLDS | Allows bot to kick users who use bolds. |
| CAPS | Allows bot to kick users who are talking in caps. |
| COLORS | Allows bot to kick users who use colors. |
| FLOOD | Allows bot to kick users who are flooding the channel with multiple lines of text. |
| ITALICS | Allows bot to kick users who use italics. |
| REPEAT  | Allows bot to kick users who are repeating themselves. |
| REVERSES | Allows bot to kick users who use reverses. |
| UNDERLINES | Allows bot to kick users who use underlines. |

**Maintain Badwords:**

To add a word to the badwords list

`/msg BotServ BADWORDS <channel> ADD <word> [SINGLE | START | END]`

To delete a word from the badwords list

`/msg BotServ BADWORDS <channel> DEL {word | entry-num | list}`

To display the badwords list

`/msg BotServ BADWORDS <channel> LIST [mask | list]`

To clear all entries from the badwords list

`/msg BotServ BADWORDS <channel> CLEAR`

*Maintains the bad words list for a channel. This list determines which words users are to be kicked for using when the bad words kicker is enabled.*

---

**Say command:**

`/msg BotServ SAY <channel> <text>`

*Makes the bot say the given text on the given channel.*

---

**Act command:**

`/msg BotServ ACT <channel> <text>`

*Makes the bot do the equivalent of a "/me" command on the given channel using the given text.*

---

**Unassign a bot:**

`/msg BotServ UNASSIGN <channel>`

*Unassigns the assigned bot from the channel. When you use this command, the bot won't join the channel anymore. However, bot configuration for the channel is kept, so you will always be able to reassign a bot later without having to reconfigure it entirely.*

