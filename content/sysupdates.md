---
# This page is marked as "draft" due to dead content (sysop)

title: "sysop updates/commands"
date: 2019-01-14T22:03:38Z
draft: true
type: "page"
---

Sysop will no longer issue a ban on users that mass-connect at the same time if they are whitelisted. A user is whitelisted when they connect 10 times, or connect and identify to an auth account at least once. All opers are exempt from being punished by sysop, and many channels are whitelisted not to trigger sysop's automation. By joining sysop to a channel, sysop will automatically report floods, or ban accordingly. In case of an attack on a channel, use '.join #chan' in ##sysop

If the network is under attack, issue '.securenetwork on' which will set 'noctcpkill' to on (which will kill a user's connection if they do not reply to CTCPs upon connect), it will also set 'securenospam' to on, which will set every current and future user on the network to mode +Rc so bots/attackers can not message users without being in the same channel as them, and being a registered client.

When sysop joins a channel, it can not be removed unless an oper issues .part or uses /sapart to make it leave. kicking or /removing sysop will make it join as an operator. when sysop's in a channel it means business.

## Commands
- .nban nick/ip/host etc etc etc etc
- .nunban nick/ip/host etc etc etc etc
- .chanclose #chan / Temporarily closes a channel, joins the channel, deops+devoices all users, sets mode +im, clears topic, and suspends chanserv until an oper reopens the chan.
- .massmode *wildcard* +modes / sets every user matching a wildcard to a certainmode, +mode or -mode
- .bncq / lists all users waiting for a bnc account to be added
- .acceptbnc user / adds a bnc for user and messages them the credentials
- .denybnc user / denies their request and sends them a message.
- .warn user/#chan / sends a message to a user with the network's rules and a warning that future violations means dismissal
- .lag / lists sysop's lag to its current server, updates the lag after outputting so it updates right away
- .reconnect / reconnects the bot to irc.snoonet.org to connect it to a different server in the pool
- .join #chan / joins sysop in to a channel as a guest (non-op) and listens for floods/repeats/attacks then either reports it, or bans accordingly
- .part #chan / makes sysop leave a channel
- .settings / list all settings the bot has set
. -set var value / updates the variable and rehashes to take effect immediately.

## Automation
Some things in sysop can only be configured via the config files. Network links can be automatically maintained be sysop (If a hub goes down, sysop will connect a dummy client to the next available hub and link all servers to it)

