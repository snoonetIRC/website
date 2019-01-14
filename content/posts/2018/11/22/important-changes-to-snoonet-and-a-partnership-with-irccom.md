--- 
date: 2018-11-22T21:38:00
draft: false
title: "Important changes to Snoonet and a partnership with IRC.com"
type: post
---

Snoonet is expanding its family and linking up with the new IRC network, [IRC.com](https://irc.com). For Snoonet users, the only real change you’ll feel is an influx of new users with some new cloaks. Staff wise, we are taking on no new opers over the link, and all current staff will remain as they are.

In order to reduce confusion between Snoonet and IRC.com users, a few changes will be made to cloaking and services bots. For most users, these changes will not be noticeable. Note that all these changes may not happen at once, for example, the cloak changes will take a bit more time than the rest.

**1.** Services will now display a vHost of `@services` instead of `@snoonet/services/*`. For example `NickServ!NickServ@snoonet/services/NickServ` will now simply be `NickServ!NickServ@services`.

**2.** vHosts for __*newly registered*__ users will now either display `@irc.com/user/<username>` or `@snoonet.org/user/<username>` depending on which side of the network the user registered on.

**3.** Default and Snoo-ed nicks will change from `SnooXXXXX` to `GuestXXXXX` in order to be more network agnostic. Note that this will also affect how services force-nicks users to protect nicknames. As we understand that a number of channels ban Snoo-ed nicks we are providing a grace period of **7 days** to channel operators to update their ban lists.

**4.** Unregistered users will now display a cloak containing `@irc-<hash>.IP` instead of `@Snoonet-<hash>.IP`. **Note that this will not affect old bans against Snoonet-<hash>.IP cloaks, both types will be checked where needed.**

**TL;DR:** The vHosts services bots use are changing to be more name agnostic. We’re making newly registered nicks have vhosts based on the side they registered on. We’re changing snoo-ed nicks to `Guest`. Cloaks are also undergoing changes to be more name agnostic, though bans on old ones will still work.

If you have any questions or concerns please don't hesitate to ask a Snoonet staff member in #help or through our support system located at [https://support.snoonet.org/](https://support.snoonet.org)

