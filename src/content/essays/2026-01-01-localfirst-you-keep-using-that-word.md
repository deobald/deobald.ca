---
title: "LocalFirst: You Keep Using That Word"
date: 2026-01-01T00:00:00
categories: ["technology", "open source"]
tags: ["local-first", "design"]
draft: false
---

From [the original local-first essay](https://www.inkandswitch.com/essay/local-first/)
(or its [pdf version](https://martin.kleppmann.com/papers/local-first.pdf))
to Martin Kleppmann's
[much-simplified inversion of Leslie Lamport's definition of a distributed system](https://martin.kleppmann.com/2024/05/30/local-first-conference.html):

> In local-first software, the availability of another computer should _never prevent you from working._

...it's been difficult to get a handle on a good definition for "local-first". Personally, I've decided the reason for this is because "local-first" isn't a binary label we can cleanly apply to something. It's more of a spectrum.


## The Problem Scenarios

Kleppmann's micro redefinition, of course, assumes we're in a distributed context to begin with. The very next slide in his 2024 talk, above, states that "local-first implies ... multi-device." But the snappy one-liner on the preceding slide does miss this fact and many people still conflate "offline-first" with "local-first". A VisiCalc spreadsheet on an Apple II is not a local-first document. There are plenty of other points of confusion, though.


### Servers Are Okay

Recently, I had someone on Mastodon proclaim that local-first implies that servers aren't allowed. While I prefer the peer-to-peer _friendly_ future we might enable with local-first, I don't like the fantasy of doing away with servers completely. This person's example scenario was migrating an entire GNOME environment from one computer to another. In many cases, I'd like an iCloud-style service for that. I'd probably even pay for it, if it existed.

But a more acute example occurred just this week. Some friends and I created a shared storywriting experience using [Reflection](https://modal.cx/blog/reflection-winter-update/):
a local-first GNOME multiplayer Markdown editor. Those friends shared the doc via the Modal Collective with #39c3: [https://modal.cx/39c3/](https://modal.cx/39c3/)

Our little collaborative writing exercise ended on December 31st, 2025 but one day this past week, my laptop lid must have been in a weird position and it went to sleep overnight. It felt a bit weird to keep my laptop awake every night just to ensure a p2panda node was available for new users. I would have really loved to run Reflection as a headless service on one of my servers.

In this scenario, a "server" isn't a special piece of software. It's just a regular p2p node like anyone might run on their phone or laptop. But it's guaranteed to stay up 24/7 and it might be beefier, geographically distributed to reduce latency, or any of the umpteen other reasons we created The All-Powerful Cloud.


### No Spinners

One of the original ideals of local-first was "no spinners."
([Ridin spinners](https://www.youtube.com/watch?v=YxwfgDu0m1I)
hasn't been cool for a quarter-century.)
While this was a visual aid to describe what was meant by "fast", I wish more product managers would take this literally. Bitwarden clients, for example, will eventually let you see your passwords even if they can't reach your Bitwarden/Vaultwarden server... but they'll spin for a while first, trying to phone home.

How many mobile apps do you have installed that work without an internet connection? On my phone, at least, they are few.

How about desktop apps? Slack? Fractal? Every version of persistent IRC will be bound to a client/server architecture for years to come ... but why can't I scroll back and search through every message these apps have seen, even without an internet connection?


### F/OSS is Implied

Under local-first ideals, owning your data is essential. If someone else can rug-pull your data out from under you, that software is objectively not local-first.

I put [Linear](https://linear.app/) in this category. When (not if) Linear Orbit, Inc. finally dies, you can't keep your data. Your not going to manage your software project with a CSV export. I have other problems with Linear, but I'll get to those later.

However, the old Ideal #7
(["you retain ultimate ownership and control"](https://www.inkandswitch.com/essay/local-first/#7-you-retain-ultimate-ownership-and-control))
is... pretty specific. And it's specific in useful ways. That original doc says "no company should restrict what you are allowed to do." Proprietary software, even if it operates on a widely-understood data format (looking at you, Obsidian) has restricted you based on the fact that you can't keep working the way you once did when their company finally dies.

Kleppmann's new definition is actually useful here: _In local-first software, the availability of another computer should never prevent you from working._ When the Obsidian servers go down, either because of a massive outage or because Dynalist Inc. has gone out of business, your sync stops working. Sure, you can keep editing your notes on a single machine... but I'd argue sync is a core feature of Obsidian. And many other products these days.

And, thus, a company that sells you proprietary apps is restricting what you are allowed to do, and determining the availability of features based on the availability of their machines.

Servers are allowed. But servers should be optional. For most local-first apps, that will mean that at least the app itself is Free and open source, even if the service isn't.


### The Web is Weird

While I can understand why so much development effort has gone into web technologies (they do some neat things!), it's very peculiar to build local-first apps on the web.

A webapp has a URL, first of all. The very first thing it _does_ is phone home. "Phoning home" is the defining characteristic of a webapp. A couple years ago, some friends of mine were building a local-first CRM. They were web developers and so the app was a webapp. I was excited to beta test it for them, but living inside a browser just forced me through a bunch of extra hoops: cookies, JavaScript, local storage, bouncing my cache, etc. Everything about running their beta software was a pain in the ass.

The convenience of webapps, once upon a time, was precisely that they were hosted... and remote. We rented stable machines someone else upgraded for us. For 20 years, from 2005 to 2025, we were back to mainframes and time-share architectures. That's a bad design for an app you want to take with you to the moon, though.

This is my second beef with apps like Linear. Just because Linear is snappy doesn't make it "local-first". They rent out mainframe time-shares, just like any other 2005 SaaS product.


### We're Not Always Multiplayer

[Sebastian Wick](https://fantastic.earth/@deobald/115313381526877943) and I had a back-and-forth thread about this a few months ago. While "multi-device"
([Ideal #2](https://www.inkandswitch.com/essay/local-first/#2-your-work-is-not-trapped-on-one-device))
is essential to local-first, "seamless collaboration"
([Ideal #4](https://www.inkandswitch.com/essay/local-first/#4-seamless-collaboration-with-your-colleagues))
is not. It's worth reflecting on what this means.

There are plenty of apps where multiplayer doesn't make any sense. By both domain and technical choice, if an app developer can avoid programming conflict resolution, she's got a lot less testing, debugging, and thinking to do.

An immutable record of personal health record documents is one domain/tech combo in this category, for example. You might want this on all your devices, but you're unlikely to want multiplayer features. SyncThing is a "pure" tech example that's almost always guaranteed to work for a single user but requires multiple users to make choices about conflict resolution.

Granted, one day multiplayer may be "free" everywhere thanks to slick tooling and a smorgasbord of CRDTs. But we're not there yet.


## Solutions On A Spectrum

To multiplayer or not to multiplayer is really up to the app in question. But when it's not required, I'm inclined to believe app developers would save themselves a lot of grief by avoiding it.

The solution to the weirdness of local-first webapps is to build native apps. They don't need to be built in GTK or SwiftUI. Build them with Flutter or React Native or Electron, if you have to. But wean yourself off the web's technologies.

The solution to the f/oss problem is to build Free and open source apps. You can charge for a service, if you want, but ideally that service is just a fancied up version of the f/oss app your customers are running.

Spinners can be avoided in any software, not just local-first. Always let the user see (at least in read-only mode) what data the app has seen.

Depending on how you design your data model, servers can either come first in your product's development process or they can be a headless app, as an afterthought. For example, if your documents/states are immutable, or derived from immutable events, you can sleepwalk your way into a local-first app even if you build it as a boring old client/server architecture first. Once you have a service that behaves nicely, you can always slosh the immutable data around using the simplest constructs from peer-to-peer frameworks.

You can absolutely build a single-player proprietary webapp that checks for a network connection before allowing offline usage. But, to me, this feels deeply antithetical. Instead, an app is _more_ "local-first" the _more_ it ticks these boxes:

* free and open source
* native app
* local-first, _first_
* seamlessly multi-player
* server-friendly, even if just a headless p2p app node
* prefer immutability over fancy CRDTs


## Next Decade's Problems

There are, of course, all sorts of messages, documents, protocols, and formats that we'll struggle to shoehorn into a local-first model. Email, chat (Slack, Matrix, Signal, Telegram, etc.), calendaring, video sharing, podcasting, social media... all of these things are a bit of a challenge to execute in a truly local-first way.

The folks behind [Quiet](https://tryquiet.org/) are making an honest attempt at a local-first Slack alternative. But it's tough. I expect to see the old file-sharing p2p networks of the 1990s resurface as universal methods for sharing podcasts (which earn most of their revenue from sponsors anyway) before messaging systems like Mastodon, email, and Slack are supplanted by local-first alternatives.

One can dream, of course. In the meantime, I believe there is room for free and open source cloud services... but that's a conversation for another day.
