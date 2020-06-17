--- 
date: 2016-04-28T23:25:00
draft: false
title: "Privacy and Security - How Snoonet Protects You"
type: "post"
---

Snoonet recognizes that privacy and security are key issues for many of our users.  It is our goal to ensure that our network is safe and your data is secure.  We take a number of steps to protect users' privacy and limit the information that is exchanged on our network.  We protect your privacy in the following ways:

**IPs** are hidden by default for all users with `umode +x` and replaced by a one-way hash in the users host. For unregistered users, their IP will be replaced with *Snoonet-hash.IP*. Registered users receive a vHost, *user/AccountName*.

**Registration information**, including e-mail addresses, are hidden in the user's NickServ info. Users may select to hide additional information as well with `/ns help set hide`

**User channels** are not visible in their WHOIS by others and is automatically set on connect with the `umode +I`. Users may elect to disable this user mode if they wish. Private and secret channels are never displayed to users not also in those channels, regardless of the user mode setting.

**Private messages** can be restricted by users with a variety of user modes. PMs can be limited to users in common channels, registered users, or a configured whitelist. See [User Modes](/umodes) for more information.

For more information on how Snoonet protects you, ways you can protect yourself, and frequently asked questions, please see our [Privacy and Security page](/privacy). If you have any questions, feel free to ask a staff member in {{< webchat channel="#help" title="#help" >}}.
