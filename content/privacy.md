---
title: "Privacy"
date: 2018-12-30T21:43:20Z
draft: false
type: "page"
---

Snoonet's top priority is the privacy and safety of its users. We take great measures to ensure that everyone's information is secure and that no personally identifying information is available outside of what users wish to share on their own. Our privacy features include the following, and we are constantly evaluating the measures we have in place and implementing additional security as it becomes available.

# Privacy Features

**IPs** are hidden by default for all users with `umode +x` and replaced by a one-way hash in the users host. For unregistered users, their IP will be replaced with *Snoonet-hash.IP*. Registered users automatically receive a vHost, *user/AccountName*.

**Registration information**, including e-mail addresses, are hidden in the user's NickServ info. Users may select to hide additional information as well with `/ns help set hide`

**User channels** are not visible in their WHOIS by others and is automatically set on connect with the `umode +I`. Users may elect to disable this user mode if they wish. Private and secret channels are never displayed to users not also in those channels, regardless of the user mode setting.

**Private messages** can be restricted by users with a variety of user modes. PMs can be limited to users in common channels, registered users, or a configured whitelist. See [User Modes](/umodes) for more information.

# What can I do to protect my privacy?

**Assume everything is public** Like anywhere on the internet, the best way to protect your privacy is to assume everything you share is public. While Snoonet does everything it can to protect your privacy, we cannot stop users from sharing information you share with them. Many users log their own channels and private messages, and some do not respect privacy as much as we would like.

**Do not share personal information** Similar to the above guideline, any personal information you share is subject to the intent of others, malicious or not. While doxxing is strictly against our [rules](/rules) and will be dealt with accordingly, once information is shared online, it cannot be removed.

**Register your nickname** By registering your nickname with a strong password, only you can use your nick. This ensures that users you speak with know and can verify they are speaking with you and not someone attempting to impersonate you. For more information on registering, please see our [NickServ instructions](/anope#NickServ).

**Verify staff members** If you are requesting assistance in {{< webchat channel="#help" title="#help" >}} or need to contact a staff member, please be sure to provide confidential or sensitive information only to Snoonet Staff. All staff are listed on our [Staff Directory](/staff) and can be verified on IRC with `/whois <nick>` or with `/stats P`. While we do not use any specific modes or characters to denote staff on the network, all staff members have `snoonet/rank/nick` as their vHost. Staff WHOIS also contains our role information, similar to `<user> is a member of Snoonet Staff`.

**Verify users** Similar to staff, regular users can often be verified before chatting. If you know a user whom you chat with has a registered account, you can verify their identity by checking their information with `/whois <nick>`. If logged in, they will have a `user/nick` vHost and a line saying `<nick> is logged in as <user>`.

**Report suspicious users** If you believe a user is sharing personal information ("doxxing"), harassing yourself or another user, or impersonating users or staff, please let us know in {{< webchat channel="#help" title="#help" >}} and a staff member will assist you.

# Frequently Asked Questions

**Why is my information visible when I look myself up?** While your WHOIS and NickServ info is hidden from users, it is always visible to yourself. Your channel list, IP address, and host will be visible if you WHOIS yourself. Additionally, your NickServ information will be visible to you if you are properly logged in and identified.

**Are there any "secret" staff members?** No. All staff members are visible to users and can be verified as outlined in the above section regarding verification of staff members. Any user who cannot be verified in these ways should be reported in {{< webchat channel="#help" title="#help" >}} to a verified staff member.

**Can Snoonet Staff see my information?** Yes. In order to properly run the network and protect the safety of its users, all above information is visible to staff members. This information is never shared outside of staff and is used solely for the purposes of running the network, or as requested by users in need of support regarding their own information.

**How can I connect securely to Snoonet?** Snoonet supports SSL for all connections to our [servers](/ircservers) and is most secure when all users connect via SSL. Additionally, users can [authenticate on connect](/help/#Authing%20on%20connect) to services via SASL and CertFP. Both can be combined to use SASL EXTERNAL, the most secure way to authenticate to IRC. *It is strongly recommended that all users connect via SSL.* See the following question for more information.

**What information does SSL protect?** SSL encrypts everything that your computer sends to the server, and everything the server sends back to you. Most importantly, your username, password, and private messages are secured. This does not, however, secure public channels. Anyone can join a public channel and read what you say and most public channels are a mix of SSL and non-SSL users, so there is no guarantee information said in a public will not be visible to someone you do not wish to see it.

**Does Snoonet allow bouncers, VPNs and proxies?** Users who wish to obscure their IP address may connect using a VPN or IRC bouncer service. For users connecting with a bouncer, we do not impose a time limit on your connection. Open proxies or other malicious hosts are not permitted to access Snoonet.

**Can channels be "spied" on?** No, all users can see when a staff member joins a shared channel. Although a module ([m_invisible](https://github.com/inspircd/inspircd-extras/blob/master/2.1/m_invisible.cpp)) exists to allow staff to join a channel unnoticed, it is not compiled or loaded on Snoonet's servers and thus not able to be used.

**Does Snoonet maintain chat logs?** No. While users are free to log their own channels and private messages in accordance with our [rules](/rules), Snoonet does not maintain its own logs. Logs may be requested from users as needed to resolve specific issues but are not retained by Snoonet.

**Are PMs truly private?** Yes. Unlike some other networks, Snoonet Staff are not able to monitor or log private messages between other users. All messages sent on Snoonet are visible exclusively between the two users messaging each other.

**Can I use end-to-end encryption for private messages?** Yes, if additional privacy is desired, we recommend using [Off-the-Record Messaging](https://otr.cypherpunks.ca), which encrypts the connection directly between yourself and your chat partner and does not rely on the IRC server to provide security. OTR must be supported by both users' clients and requires both parties authenticate with each other. *Unlike OTR, blowfish ("fish") encryption, while still popular, has several known vulnerabilities and is <u>not</u> secure. Please do not rely on FiSH to ensure your privacy.*

**Is it possible for users to obtain my IP via DCC?** No, Direct Client-to-Client (DCC) is disabled on Snoonet. Users cannot establish direct connections between each other for chatting or file sharing. If you wish to share files, please use a public file sharing service.

**Who can I talk to about a privacy-related concern?** Please ask if you can private message a staff member in {{< webchat channel="#help" title="#help" >}} and we will be glad to assist you. All correspondence between users and staff is confidential, although information may be shared with other staff members as needed to resolve the issue and protect the network and our users. Please verify staff members as outlined above before sending any information.

# Children's Online Privacy Protection Act

While Snoonet welcomes users and communities from all ends of the spectrum, our network is not designed for nor aimed at children. In accordance with the United States Government and the Children's Online Privacy Protection Act of 1998, individuals under the age of 13 are not permitted to browse Snoonet or create user accounts. We strongly recommend that minors 13 years of age or older ask their parents for permission before logging on, and to refrain from posting any information about themselves, personal or otherwise, on the network. Snoonet reserves the right, at our discretion, to require parental confirmation via email or phone from anyone claiming to be under the age of 18. If you have collected information from or about a child under the age of 13, you will face a network ban.

*As of the last update to this page, Snoonet has never received a National Security Letter, an order under the Foreign Intelligence Surveillance Act, or any other classified request for user information.*
