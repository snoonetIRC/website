---
title: "Authing on connect"
date: 2019-01-10T19:50:32Z
draft: false
type: multipage-index
weight: 6
---

Snoonet uses IRCDs and Services that follow the IRCv3 standard, and as such, we offer several ways for a user to auth to services before joining channels.

Many older clients will automatically send `PRIVMSG NickServ :identify username password`. This isn't optimal, as its slow, and somewhat insecure. Furthermore, it doesn't run till you join a channel, which can expose your hostname as well as annoy everyone with 3 join messages.

There are a few ways to prevent this, and be authorized before you even join a channel:

### CertFP

Snoonet network runs Anope services, which allows SSL certificate fingerprint authentification.  This is by far the most secure method of connecting. For help on how to create an SSL certificate and identify with, please refer to [this document.](https://www.oftc.net/NickServ/CertFP/)

### SASL

SASL is the preferred method for authing, and is supported by a variety of clients, either natively or through the use of third party scripts. You simply configure your client or plugin with your irc username and password, and when you connect it sends these to the server.

Freenode has an [excellent guide](https://freenode.net/kb/answer/sasl) to setting up SASL-based auth on many different clients.

### Tor

Snoonet no longer offers a hidden service. [More info](/tor).

### Server password

If your client is not SASL capable, or you don't want to set it up, there is an older, albeit less secure, method of authing to services. You can send your password at connect time.

We support a variety of strings, but the most compatible is "username:password", where username is the main NickServ account and password is its password. Set this as your server password, and this will Auth you at connect.
