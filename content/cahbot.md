---
# This page is marked as "draft" due to dead content (cahbot)

title: "cahbot"
date: 2019-01-14T21:48:35Z
draft: true
type: page
---

CAHbot runs games of [Cards Against Humanity](http://www.cardsagainsthumanity.com/) on IRC.  Like an adult version of Apples to Apples or Mad Libs, players are provided with a random sentence to complete (black cards) and fill it in with words or phrases in their hand (white cards).  Each player takes a turn being the "Card Czar" - that is, the person that doesn't play a card that round, but instead selects the winner.

CAHbot is run by [bloodygonzo](https://www.snoonet.org/bloodygonzo) on Snoonet, and is a [fork](https://github.com/snoonetIRC/irc-cah) of a project by [teelhi](https://github.com/teeli/irc-cah).  Cards Against Humanity IRC bot and its source code is licensed under a [Creative Commons BY-NC-SA 2.0 license](http://creativecommons.org/licenses/by-nc-sa/2.0/).

---

## Where Can I Play?

CAHBot is currently set up in [##cah](https://webchat.snoonet.org/##cah) on Snoonet.  You can join a public game in this channel, or **/query bloodygonzo** and arrange for your channel to host a private game.

---

## How Do I Play?

**!start** or **!start #** - Starts a game, if one is not already running. The # variable is optional, and determines the number of points a player will need to win the game.  By default, the game ends once one play reaches 8 points.

**!join** - Join a game in progress

**!quit**- Quits you from the game.

**!stop** - Stops the currently running game.

**!pause** - Pauses the currently running game.

**!resume** - Resumes a paused game.

---

### When you are playing from your hand:

**!cards** - Shows you your cards

**!play # (#)** - Plays a card from your hand, # being the number of the card in the list. Play as many numbers separated by spaces as the current card requires.

**!pick # (#)**  - Same as **!play # (#)** above.

### When you are the "Card Czar":

**!winner #** - Picks the winner of the round, # being the number of the entry in the list. Only for the current Card Czar.

**!pick #**  - Same as **!winner #** above, when you are Card Czar.

---

### OTHER COMMANDS

**!points** - Shows players' awesome points in the current game.

**!list** - Lists players in the current game.

**!status** - Shows the  current status of the game. Output depends on the state of the game (e.g. when waiting for players to play, you can check who hasn't played yet)

