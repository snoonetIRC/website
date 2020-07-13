---
date: 2020-07-13T18:32:00
draft: false
title: 'Your client and InspIRCd'
type: 'post'
---

We are currently working on upgrading our network to [InspIRCd v3](https://www.inspircd.org/2019/05/03/v300-released.html).
Older versions of some IRC clients (listed below) are non-compliant with way
InspIRCd v3 emits messages. More information about this can be found in the
[InspIRCd FAQ](https://docs.inspircd.org/faq/#why-does-my-client-not-show-mode-changesopped-users-on-joinetc-correctly-when-using-inspircd-v3).

This update will keep us moving towards implementing cool new IRCv3 features.

## Who needs to upgrade?

You may recently have noticed messages from a network bot suggesting you run
software updates.

A large majority of our users are not affected. However, if you are using a
client older than the minimum version specified in the table below, you will no
longer be able to connect to our network after the software upgrade.

| Client  | Minimum version |
|---------|-----------------|
| AdiIRC  | v3.6            |
| HexChat | v2.14.3         |
| irssi   | v1.1.0          |
| WeeChat | v2.5.0          |
| ZNC     | v1.8.0          |

