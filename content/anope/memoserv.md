---
title: "MemoServ"
date: 2019-01-14T22:31:47Z
draft: false
type: multipage-index
weight: 5
---

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

