---
date: 2020-10-23T21:03:00
draft: false
title: 'Important information concerning services maintenance on October 23rd, 2020'
type: 'post'
---

From: Network Director (duck@snoonet.org)

Good afternoon,

On October 23rd, we carried out maintenance on our services package to fix an issue with respect to account registrations. While carrying out the maintenance, our services package behaved unexpectedly and after an investigation, we determined that some recent database changes are not recoverable and are thusly declaring an incident resulting in the loss of data.

If you registered an account on Snoonet, grouped a nickname to an existing account, registered a channel or made any changes to the access list of an existing channel, then please read the following information carefully.

## What exactly happened?
Whilst conducting maintenance, we noted that Anope was not saving its database correctly and was instead storing all recent changes in memory. While attempting to render a fix, Anope suffered a segmentation fault which terminated its program. The fault that terminated the program was caused as Anope was trying to save its database.

## How will Snoonet respond?
Upon declaring the data loss incident, we made the decision to restore the last backup that would work successfully. The backup was taken on October 4th at shortly after midnight (00:00) UTC. Any changes that were made after this time have been lost.

We've also added information to our logon news concerning the data loss incident.

For users that registered an account on or after the 4th of October, we have reached out to them directly to advise of the incident.

We will be immediately implementing stricter testing guidelines for any future software or configuration changes to avoid a repeat situation.


I realize that this situation is not ideal for some people and I offer my apologies for any inconvenience this may have caused you. If you have any concerns, you can either ask our network staff by joining <a href="https://webchat.snoonet.org/help" target="_blank">#help</a>. You can also reach out to me directly via private message on the network or by email at duck@snoonet.org.
