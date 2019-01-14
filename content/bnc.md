---
title: "BNC Help"
date: 2018-12-30T21:43:20Z
draft: false
type: page
---

## What is a BNC?

A BNC (or Bouncer) is a service which keeps you connected to IRC 24/7. Instead
of connecting directly to Snoonet, you connect to the bouncer, which stays
connected. The bouncer will send you notifications while away when pinged or
messaged and play back messages which you missed while you were disconnected.
This way, you can always be part of the conversation.

## How do I get one?

Once you have a nick registered with NickServ for one month, you are eligible to
request a BNC. You need to join ##bnc and type `/requestbnc`. Then, wait for an
operator to approve your request. Usually this is done within an hour or two.
When your request is approved, details on connecting to your account will be sent to your account via MemoServ. To read them, type */ms read new*

## How do I check how long my nickname has been registered?

You can use the command /msg nickserv info NICKNAME to check how long you've had
an account. For example:

```
/msg nickserv info gonzobot
```

## What are the restrictions?

* Your BNC account will be deleted after 30 days of inactivity.
* All regular Snoonet rules apply to BNC users.

## How do I connect through my BNC?

Instead of connecting to `irc.snoonet.org` on port `6667`, you will connect
to `bnc.snoonet.org` on port `5456` (SSL on port `5457`). Set a server
password in your IRC client. This password should be "username:password", using
the credentials sent to you via MemoServ. **These are not your NickServ credentials.**
Then connect to this server. If your bouncer becomes disconnected from Snoonet
for any reason, type `/znc connect` into your BNC window to reconnect it.  

Examples of correct connection configurations:

{{< lightbox and "[AndChat]" "/images/bnc/AndIRC.png,/images/bnc/AndIRC2.png" >}}
{{< lightbox hex "[HexChat]" "/images/bnc/HexChat.jpg" >}}
{{< lightbox holo "[HoloIRC]" "/images/bnc/HoloChat.png,/images/bnc/HoloChat2.png" >}}
{{< lightbox irssi "[irssi]" "/images/bnc/irssi.png" >}}
{{< lightbox mutter "[Mutter]" "/images/bnc/mutter.png,/images/bnc/mutter2.png" >}}
{{< lightbox pal "[Palaver]" "/images/bnc/Palaver.png,/images/bnc/Palaver2.png" >}}
{{< lightbox text "[Textual]" "/images/bnc/Textual.png,/images/bnc/Textual2.png" >}}

## Can I use KiwiIRC with BNC?

You can, we provide a link specifically for this. [webbnc.snoonet.org](https://webbnc.snoonet.org)

## What modules are loaded?

Snoonet offers four modules on our free bouncers:

* `nickserv`: `/msg Snoo_nickserv help`.
* `perform`: `/msg Snoo_perform help`.
* `push`: `/msg Snoo_push help`.
* `simple_away`: `/msg Snoo_simple_away help`.

## How do I keep myself logged in to NickServ?

Take advantage of the `nickserv` module to keep yourself logged in. Type
`/msg Snoo_nickserv set password`, where *password* is your NickServ password.
Your bouncer will automatically identify your nick for you should you ever
reconnect for any reason.

## How do I receive notifications on my phone or mobile device?

Full instructions for setting up notifications can be found on our [push](/push)
page.

## Can I enable 24/7 logging on my BNC?

No, logging on the BNC is strictly prohibited. Although limited, server access
is required for select staff to run and maintain the BNC service. While staff
would never view the private logs of any users, we take the extra step of
disabling logging completely to safeguard your privacy to the fullest extent
possible. Users who wish to retain logs are advised to setup their own
[ZNC server](http://wiki.znc.in/ZNC) and enable the feature themselves.
