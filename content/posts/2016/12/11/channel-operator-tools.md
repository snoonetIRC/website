--- 
date: 2016-12-11T00:00:00
draft: false
title: Channel Operator Tools
type: post
---

## Channel Verification Process
We developed a new tool that channels can enable. When enabled, new users joining a channel will need to verify via the web in order to earn voice status (able to speak in a +m moderated channel) .
This will hinder ban evaders and gives staff new options to work with to help deter and stop abusive users.
It can be used in event channels with large amounts of users, or used as a tool to force people to make an effort to chat in the channel. The inner workings behind the engine will be explained in detail to the #optalk crew before making it public to all channels as a service on Snoonet.

# How it works
- User joins channel
- User is sent a link to a secure website to prove they are a real person
- Magic happens on our backend
- After visiting the URL sent to them, mode +v is applied to their nickname

You may currently request this verification process on your channel by asking in #snoonet or #optalk.