--- 
date: 2013-12-08T19:25:00
draft: false
title: "NickServ AJOIN"
type: post
---

This post is a PSA about a NickServ module we've recently enabled that will allow you to be auto-joined to a list of channels you've set upon identifying.  This should be especially useful to webchat users due to the lack of client-side auto-join.  To add a channel to your autojoin list use 
`/msg nickserv ajoin add #channelname`

To delete a channel from your autojoin list use 
`/msg nickserv ajoin del #channelname`

To see the channels currently on your autojoin list you can use
`/msg nickserv ajoin list`

As a reminder, you can get information and help with syntax on any NickServ or ChanServ command by messaging the appropriate service "help *command*".  So to see the syntax for the ajoin command you would do
`/msg nickserv help ajoin`