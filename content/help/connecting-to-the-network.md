---
title: "Connecting to the network"
date: 2019-01-10T19:49:57Z
draft: false
type: multipage-index
weight: 5
---

Connecting to Snoonet is done using our IRC round-robin, that means that you connect to our distribution host and you will then be randomly put on one of our servers. This ensures a good load balance on the network and if your server would go down you would immediately connect to a different server. The IRC round-robin for Snoonet is ``irc.snoonet.org``. To connect to IRC you always need a port, for IRC those ports are ``6667`` for normal connections and ``6697`` for SSL by default. Most networks use those very same ports and your client will likely automatically fill those in.

For some more information on our servers you can visit [our website](/ircservers) and read up about our different round-robins. We offer connectivity using IPv6, web ports for people behind a restrictive firewall, and even [TOR connectivity](/tor).

The two clients I highlighted, HexChat and Textual, both come with Snoonet as a default server. Just select Snoonet from the list of servers available in the respective connection dialogs. In the other clients you can enter irc.snoonet.org as the address or host and ``6697`` as the port. Make sure to use SSL when you connect through port ``6697`` (there is a checkbox).

When you hit the connect button you should receive a bunch of messages from the server, like the MOTD (message of the day) and a few notices about security. When you get an error use our webchat [as described above](#using-webchat) to connect and ask for help in #help.

By default when you connect to snoonet user mode +x is set, which obfuscates your IP address. Vhosts will mask your host, but only when you are [identified with NickServ](/anope#NickServ).

