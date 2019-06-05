---
title: "NickServ"
date: 2019-01-14T22:31:47Z
draft: false
type: multipage-index
weight: 2
---

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

*Most clients offer a way to save your password so that you do not have to manually type it each time. For client specific help, visit {{< webchat channel="#techsupport" title="#TechSupport" >}}.*

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

