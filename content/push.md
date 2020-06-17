---
title: "BNC Push Notifications"
date: 2018-12-30T21:43:20Z
draft: false
type: "page"
---

## What is push?

Push notifications are a free, convenient way to get notified when someone sends
you a private message, mentions you in a channel, or says one of your highlight
words while you are away from IRC. Notifications can be sent to your phone,
tablet, mobile device, computer, or web browser.

## Requirements

In order to receive push notifications, you'll need a Snoonet BNC account, a
PushBullet account, and the PushBullet app installed on any devices on which you
wish to receivel notifications. Instructions can be found in the setup
instructions below.

## Setup

1) If you do not already have one, signup and configure your client for the
   [Snoonet BNC](/bnc)

2) Create a free account with [PushBullet](https://www.pushbullet.com).

3) Install the [app](https://www.pushbullet.com/apps) on all devices for which
   you would like to receive push notifications.

4) Go to your [account settings](https://www.pushbullet.com/#settings/account),
   scroll to the bottom, and select `Create Access Token`. Copy the generated
   code, you'll need it in the next step.

5) Configure notifications to your account using
   `/msg Snoo_push set token [Access Token (from step 4)]`.

6) Enable notifications `/msg Snoo_push enable` and send a test message with
   `/msg Snoo_push test` to confirm it's working - you should receive a "Test
   Message" notification on your configured device(s).

7) By default, you will always receive a notification on mentions or PMs. To
   only receive notifications when away or disconnected,
   `/msg Snoo_push set away_only yes` (you are automatically marked away when
   all clients disconnect).

## I'd like to see the message in the notification instead of just 'Highlight' or 'Private Message'

You can turn the privacy option off using `/msg Snoo_push set private no`

## Can I set certain highlight words to receive push notifications on?

Yes. In addition to your current IRC nick, you can add and delete words from a
highlight list. Please enter one word per command.

* To add a word: `/msg Snoo_push highlight add [word]`
* To delete a word: `/msg Snoo_push highlight del [word]`
* To view your highlight list: `/msg Snoo_push highlight list`

## Can I ignore certain nicks?

Absolutely. The ignore list works the same way as the highlight list, with one
nick per command.

* To add a nick: `/msg Snoo_push ignore add [nick]`
* To delete a nick: `/msg Snoo_push ignore del [nick]`
* To view your ignore list: `/msg Snoo_push ignore list`

## I'm not receiving notifications

Set `/msg Snoo_push enabled` to turn notifications on. If they still are not
working, make sure your token is properly set from steps 3 and 4. You can send a
test notification with `/msg Snoo_push test`

## I set *away_only* but am not receiving notifications while away or am receiving notifications while not away

If you use multiple devices, please make sure you are properly set away or
unaway in IRC by confirming with `/whois your_nick`, which should include an
away message if you are away, and none if you are not. You are automatically set
away after 60 seconds of disconnecting all clients from BNC and unaway when you
return. You can manually set away with `/away <reason>`. To return from away,
use `/away` and confirm via WHOIS.

## I received a notification but can't reply in the app

PushBullet is a notification service only - you cannot send messages to IRC. If
you would like to use IRC on your mobile device, our
[BNC page](/bnc) has instructions for configuring various clients.

## Do notifications require any identifying information?

No. Your PushBullet token is a unique identifier tied to your account that is
only used to send notifications from Snoonet to your device. The push software
does not have access to your phone number or PushBullet account details.

## Does Snoonet support services other than PushBullet?

At this time, no. The module is custom written for Snoonet and currently only
supports PushBullet. While we may add additional services later, there is no
timeline for such features.

## Where can I get assistance?

Feel free to ask in #help and someone will assist you. Issues related to
PushBullet itself should be sent to their
[support](https://www.pushbullet.com/support) directly.

*Snoonet is not affiliated with PushBullet.*

