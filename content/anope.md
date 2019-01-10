---
title: "Anope"
date: 2019-01-10T21:54:56Z
draft: false
type: page
---

**You can use our [web services portal](https://anope.snoonet.org) to modify any and all settings. This will allow you to change the same options shown on this page, but with a friendly GUI!**


---

#### Help Categories:

**<a href="#NickServ">NickServ</a>**

**<a href="#ChanServ">ChanServ</a>**

**<a href="#MemoServ">MemoServ</a>**

**<a href="#BotServ">BotServ</a>**

**<a href="#HostServ">HostServ</a>**

---
**Key**: 

`<these brackets>` denote required information.

`{these brackets}` denote that you may pick one of the options presented.

`[these brackets]` denote entirely optional parameters.

| Command | Optional Alias |
|---|---------------------------------|
|`/msg NickServ [COMMAND]` | `/ns [COMMAND]` |
|`/msg ChanServ [COMMAND]` | `/cs [COMMAND]` |
|`/msg MemoServ [COMMAND]` | `/ms [COMMAND]` |
|`/msg BotServ [COMMAND]` | `/bs [COMMAND]` |



---
---
<a name="NickServ"></a> 


# NickServ
*<a href="#top">^back ^to ^top</a>*

**General NickServ in-network help:**

`/msg NickServ HELP [COMMAND]` 

*Without a [COMMAND] parameter, this will list the NickServ commands and descriptions. If you fill in the [command] parameter it will give you detailed instructions on that command.*

---

To use the awesome features from NickServ, you must first register your nick. Make sure you're using the nick that you want by typing:

`/nick <nick>`

Then type this to register your nick:

`/msg NickServ REGISTER <password> <email>` 

Make sure that you use a valid email, as you'll have to confirm that it is yours. If you don't get the email you may have the server resend it to you using this command:

`/msg NickServ RESEND`

---


Every time you join Snoonet after registering your nick, you'll be prompted for your password. Just type this:

`/msg NickServ IDENTIFY <password>` 

and you'll be logged in!

*Most clients offer a way to save your password so that you do not have to manually type it each time. For client specific help, visit [#TechSupport!](http://webchat.snoonet.org/techsupport)*

---

Forgot your password? No problem. Use this: 

`/msg NickServ RESETPASS <nick> <email>`

---

Sometimes you get disconnected, but your nick is still present on the network. When this happens you can regain control of your nick by typing:

 `/msg NickServ GHOST <nick> <password>` 

Or

  `/msg NickServ RECOVER <nick> <password>`

---

You can have multiple nicks. Just switch to the nick you want to add to your registered nick and type: 

`/msg NickServ GROUP <mainnick> <password>` 

to undo it, type: `/msg NickServ UNGROUP [nick]`

To see all the nicknames you have in your group, type:

 `/msg NickServ GLIST`

---

If you no longer wish to have your nickname registered, type:

`/msg NickServ DROP <nick>`

---

To view the information about your nick, such as when you registered, type:

 `/msg NickServ INFO <nick>`

---

To edit the items that people can view about you with the INFO command such as your facebook or email, type:

`/msg NickServ SET [option]` 

---

You can also set up a list of channels to join automatically when you log in! The command for this is:

`/msg NickServ AJOIN {ADD|DEL} [nickname] <channel> [key]`

To view your autojoin channels, type:

`/msg NickServ AJOIN LIST`

List channels you have access on:

`/msg ChanServ ALIST` 

---

---

<a name="ChanServ"></a> 

# ChanServ
*<a href="#top">^back ^to ^top</a>*

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

---

<a name="Stats"></a> 
**Stats**


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

---
---

<a name="BotServ"></a> 

# BotServ
*<a href="#top">^back ^to ^top</a>*

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

*For more information on a particular option and it’s settings, type `/msg BotServ HELP set <option>`.*

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

*For more information on a particular option and it’s settings, type `/msg BotServ HELP kick <option>`*

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

---
---

<a name="MemoServ"></a> 

# MemoServ 
*<a href="#top">^back ^to ^top</a>*

**General MemoServ in-network help:**

`/msg MemoServ HELP [COMMAND]` 

*Without a [COMMAND] parameter, this will list the MemoServ commands and descriptions. If you fill in the [command] parameter it will give you detailed instructions on that command.*

---

**Information:**

*MemoServ is a utility allowing IRC users to send short messages to other IRC users, whether they are online at the time or not, or to channels. Both the sender's nickname and the target nickname or channel must be registered in order to send a memo.*

`/msg MemoServ INFO`

*Displays information on the number of memos you have, how many of them are unread, and how many total memos you can receive.*

`/msg MemoServ INFO <channel>`

*Displays information on the number of memos the channel has, how many of them are unread, and how many total memos the channel can receive.*

---

**Set options:**

`/msg MemoServ SET <option> <parameters>`

*Sets various memo options.*

| Option | Description |
|---|---------------------------------|
| NOTIFY | Changes when you will be notified about new memos (only for nicknames) |
| LIMIT | Sets the maximum number of memos you can receive. |

*For more information on a specific option type `/msg MemoServ HELP SET <option>`.*

---

**Read memos:**

`/msg MemoServ READ [channel] {LAST | NEW | num | list}`

*Sends you the text of the memos specified. If LAST is given, sends you the memo you most recently received. If NEW is given, sends you all of your new memos.  Otherwise, sends you memo number num. You can also give a list of numbers, as in this example:*

`/msg MemoServ READ 2-5,7-9`

Displays memos numbered 2 through 5 and 7 through 9.

---

**List memo:**

`/msg MemoServ LIST [channel] [NEW | list]`

*Lists any memos you currently have.  With NEW, lists only new (unread) memos. Unread memos are marked with a "*" to the left of the memo number. You can also specify a list of numbers, as in the example below: 

`/msg MemoServ LIST 2-5,7-9`

Lists memos numbered 2 through 5 and 7 through 9.

---

**Ignore feature:**

To add a new ignore entry

`/msg MemoServ IGNORE [channel] ADD entry`

To delete an existing ignore entry

`/msg MemoServ IGNORE [channel] DELETE entry`

To list all ignore entries

`/msg MemoServ IGNORE [channel] LIST`

*Allows you to set users (by nick or host) to ignore, keeping them from sending a memo to you or a channel. If someone on the memo ignore list tries to memo you or a channel they will not be told that you have them ignored.*

---

**Delete memos:**

`/msg MemoServ DEL [channel] {LAST | ALL | num | list}`

*Deletes the specified memo or memos. If LAST is given, the last memo will be deleted. If ALL is given, deletes all of your memos. To delete a certain memo, specify the memo number.*

`/msg MemoServ DEL 1`

This will delete memo number 1. 

*To delete multiple memos, you can list multiple memo numbers or ranges of numbers:*

`/msg MemoServ DEL 2-5,7-9`

This will delete memos numbered 2 through 5 and 7 through 9.

---


**Send memos:**

`/msg MemoServ SEND {nick | channel} <memo-text>`

*Sends the named nick or channel a memo containing memo-text. When sending to a nickname, the recipient will receive a notice that he/she has a new memo. The target nickname/channel must be registered.*

*To send a memo with a read receipt type `/msg MemoServ RSEND {nick | channel} memo-text`. Once the memo is read by its recipient, an automatic notification memo will be sent to the sender informing him/her that the memo has been read.*

---

**Check sent memo:**

`/msg MemoServ CHECK <nick>`

*Checks whether the last memo you sent to nick has been read or not. Note that this does only work with nicks, not with channels.*

---

**Cancel last memo:**

`/msg MemoServ CANCEL {nick | channel}`

*Cancels the last memo you sent to the given nick or channel, provided it has not been read at the time you use the command. You can not cancel a memo once it has been read.*

---
---

<a name="HostServ"></a> 

# HostServ
*<a href="#top">^back ^to ^top</a>*

**General HostServin-network help:**

`/msg HostServ HELP [COMMAND]` 

*Without a [COMMAND] parameter, this will list the HostServ commands and descriptions. If you fill in the [command] parameter it will give you detailed instructions on that command.*

---
---

