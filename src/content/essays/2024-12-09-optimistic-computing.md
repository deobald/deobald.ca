---
draft: true
title: "Optimistic Computing"
date: 2024-12-09T00:00:00
categories: ["open source"]
tags: ["design", "free software", "open source"]
---

I recently made two new friends:
[Abhinav Omprakash](https://www.abhinavomprakash.com/) and
[Dawn Walker](https://dcwalker.ca/).
Abhinav said I'm an optimist and I should write about it.
Dawn said I shouldn't try to coin any new terms.
This essay follows Abhinav's recommendation --- and credits Dawn,
in the very likely event I should have followed her advice.

I have been alive for approximately four decades.
Each of those decades was witness to its own fun brand of computering.
(And the 2020s, as a bonus.)

* 1980s: Computers! You can have one.
* 1990s: Your computer can talk to _every other computer._
* 2000s: Computers can be mainstream. Even fashionable.
* 2010s: You can keep a computer in your pocket and use your programs in the ether.
* 2020s: Ubiquitous Computing happened and I'm not sure anyone even bothered to let Adam Greenfield know.

The big corporations always had access before we, the proletariat.
Workstations before PCs, LANs before the Internet, BlackBerry before iPhone.
But we always get our grubby little paws on the toys eventually, so there
isn't a meaningful divide between B2B and B2C.
Just a minor temporal gap.

Entire libraries have been written on the anticompetitive nature of large tech Microsofts, an Apple's shoddy hardware designed for obsolescence, some Amazon's ruthless business practices and exploitation of the open source ecosystem, The Google's 20-year decay and its utter lack of respect of even its paying customers, Facebook and/or Meta's direct role in genocide, and the general deterioration of computing products.

It's been said before.
We don't need to go over all that here.

Let's instead focus on the valuable output of these companies, what we can take from them, and how it might converge with indie tech in a fun cornucopia of colourful goop.

***

## The Two Things I Don't Mean

People confuse the things I say a lot.
_A lot._
Somehow, when I started an employee-owned software company back in 2012, people in Bangalore would often confuse it with some sort of arbitrary idealism (_"well, that's a cute idea but I can't see how it would ever work"_) and people in Canada --- people who buy their gasoline and groceries from a store, I shit you not, branded "The Co-op" --- thought I was starting an NGO.

People tend to get equally confused when I talk about open source, the merits of e2ee, the merits of federation and protocols, Right To Repair, democratic corporations, and so on.
Perhaps I'm just a poor communicator.

But perhaps it's just a natural tendency we all have, that tendency to prefer simple binaries, extremes, and ideals.
It's easier to waggle our heads at someone we perceive as an idealist or to point an accusing finger at someone's extremism than it is to treeshake the nuance.

When it comes to _optimism_, there are are two extremes I will ask you to put in a box and bury in a deep, dark hole.

First, I do not mean _techno-optimism_, of any kind.
Not that sort of dystopian extremism advocated for by Mr. Ben Andreessen (that sure is a hard name to type... I wonder if it was Andre Essen at one point in his family tree) and certainly not the sort that could be captured in manifestos written in the most exhausting grammar imaginable.
But also not
[whatever Mr. MKBHD Esq. is referring to](https://www.youtube.com/watch?v=fgm5uZaS3-E&t=1050s)
when he describes a Tesla event populated with pretend humanoid robots.

This is not the optimism of the technology elite.
Whatever I'm talking about, it's probably not even very sexy.

Second, I do not mean Permacomputing, Solidarity Economy, System Thinking, Systemic Design, Sustainable Computing, Computing Within Limits, or... any of that stuff.
Those things are cool and nice and fine but they have a certain taste I'm trying to avoid here.
I think that taste is the aftertaste of hard tack and hummus washed down with a Twenty Winds Chai Tea Latte.

This is not the optimism of the hippies or artists.
Whatever I'm talking about, it still makes money.

Both of these extremes _crave_ something.
It might be another trillion dollars thanks to the latest business gadgetry.
It might be a technological answer to society's fundamentally social problems.
It might be an idolized 1980s that never really was.
It might be nothing more than a masturbatory and self-indulgent performance.
Real optimism doesn't really want anything.
Rather, it's just anticipates a specific inevitability based on the confluence of a bunch of darn great ideas.

***

## Boot To Kill

The first of these great ideas is easily misattributed to the Apple of the mid-2000s: simplicity and ease of use.
Sure, they tried their best, too.
The 4th generation iPod is still a work of art.
But as we all know, the true herald was 1997's _Diablo_ by Blizzard North.
David Brevik describes the key design decision this way:

> "Time from boot up to kill was, like ... it's gotta be under a minute."

I [love this quote](https://www.youtube.com/watch?v=huPF3Gid7DE&t=390s)
and I've abused it on every product I've built since.

So much is bundled into this idea.
_It Just Works_ is home here; you don't get to give your users a manual or a How-To or a README or a Quickstart.
Setup for systems like this is "push the power button to turn it on" and there's a ton of social and technical complexity that one must eliminate to do this correctly.
Complexity can be limited by squeezing the blubber through a tiny hole
like the App Store (which is not a true
[narrow waist](https://www.oilshell.org/blog/2022/02/diagrams.html)),
but it's always more satisfying when someone
treats this idea as fundamental to their product.

There are a bunch of other ideas that come for free with "boot to kill in under a minute":
Limiting (or eliminating) dependencies, simplicity, raw ease of use, less-is-more, and No Login.
As developers, we all appreciate small, simple, composable things with zero dependencies.
But as users?
One of the most annoying points of friction in software these days is the seemingly-ubiquitous requirement to _Create A New Account To Get Started!_ for all sorts of software that shouldn't need one.

Taking my email or phone number and sending me an OTP is equivalent to creating an account.
You've got me now.
I don't want to be got.

There are notable exceptions: [Gather Town](https://www.gather.town/) and
the ever-delightful [Excalidraw](https://excalidraw.com/).
One is very social and one is very solo, suggesting that many of the apps and team tools we use today don't _really_ require a login.
As I scroll through my password manager, only my email provider, bank, and government immigration websites stand out as apps that require some form of identity with the very first use.
And maybe [Furcadia](https://cms.furcadia.com/).

There's been a great deal of marketing nonsense spewed (spewn? I think spewn.) across our industry claiming one thing or another "delights users", but delightful products rarely get to bask in the radiance of the user's euphoria.
An excellent product is one we take for granted almost instantly:
Install it with one click. It works. It works every time.

Most people aren't delighted when they pour themselves a cup of clean water from the tap.
Nor should they be.
This should be the default, for everyone the world over.
Good software is a utility --- we only notice it when it breaks.
And a good utility never breaks.

***

## Done.

There is a resurgence of retrocomputing these days.
Everywhere I look, there are folks building for 16-bit platforms, creating pixel art, revisiting the demoscene, writing all sorts of emulators, and digging around for various ancient hardware at estate sales.
Powering up an old Amiga or Beeb, popping a floppy, and watching the old beast spring to life is a very specific kind of joy appreciated by a very specific kind of nerd.

But I take issue with an idea I see bandied about as though it were the natural and inevitable coda to that experience:
_"But, of course, you couldn't do that_ now_."_
(The Permacomputing folks have
[a different beef](https://permacomputing.net/retro/)
with retrocomputing. That's their beef, not mine.)

Rarely does it take a medium so concrete as an NES cartridge, but software that is "Done" still exists today.
It can still be created today.
For many chunky lumps of enterprise software, software must be "Done."
If your bank and your health insurance can run on 40-year-old COBOL, surely a service, built on open standards with well-defined boundaries, could also survive 40 years?

The execuse, of course, is always that a modern program must interact with the Internet, which is big and bad, and that security is hard.
So of course software can't be "Done."

But this is a cop-out.
It is true that network-connected hardware is harder to, well, harden.
It is not true that it cannot be done.
At worst, a consumer-grade application that was "Done" but stands on top of some library or protocol with a fatal security flaw will simply have to run offline forever.

All your software is offline-capable if need be, right?

***

## Local-First

Even non-programmers are discovering the strange truth that the entire software industry was ["tricked into going back to time-sharing"](https://www.youtube.com/watch?v=9TJuOwy4aGA).
Thankfully, Martin Kleppmann recently
[took a crack](https://www.youtube.com/watch?v=NMq0vncHJvU)
at distilling "local-first" down from the original 7 Ideals to the far more concise:

> The availability of another computer should never prevent you from working.

This is great in a variety of ways.
First, it actually captures _more_ than the original 7 Ideals in many fewer words.
The original 7 Ideals were: fast, multi-device, works offline, collaboration, long now, security and privacy by default, user ownership and control.
The difficulty with this list, of course, is that each of these items is subject to interpretation --- and a system which adheres to, say, 5 of 7 ideals may still try to stamp itelf with that sweet "LoFi Inside" logo.
([Linear](https://linear.app/), a snappy SaaS kanban board which may not exist by the time you read this and which, in my mind, has nothing to do with lo-fi, is a great example.)

If other computers aren't allowed to get in my way, then the services those computers represent (or provide, by way of execution) also cannot get in my way.
Reliability is baked into this ideal.
Right To Repair is implied, and so, as a consequence, open source is also implied. (Though neither is a hard requirement.)
Longevity is baked in.
If aitch tee tee pee linear dot app goes offline, my bloody kanban better keep working.
Indefinitely.

It's no longer required to declare that I (or my business) own and control the software I (or my business) run and the data we create.
Sovereignty is strongly implied.
For example, it would still _technically_ be possible for Slack Inc. to siphon off all my company's data to feed their hungry data mining partner companies if Slack The App were local-first by Martin's definition.
It would just be a very weird thing for them to do; it feels more _obviously wrong_ for Slack to steal my company's data if there isn't a reason for their product to talk to slack dot com.

It's strange to think of all the many happy downstream consequences of this punchy little requirement.
It's exciting to think about an entirely new breed of software that treats their customers --- individuals and corporations, both --- with this kind of respect.

***

## Every User is a Power User

There's some strange froth on the horizon of the internet.
White caps.
It's not nearly as easy to see as the dominance of retrocomputing but that's because retrocomputing is _right here in the boat_ and the froth is, like, dozens of nautical miles away.
I'm not a sailor so I'm not sure if that's actually far, but I'm quite blind.

There's a small contingent of ex-colleagues of mine, including
[Malcolm Sparks](https://github.com/malcolmsparks) and
[Jasim Basheer](https://github.com/jasim),
who are huge proponents of the idea that the user and the developer are artificial categories, that we should and could actively blur the boundary between them.
They love old systems like HyperCard and Visual Basic, without the nostalgia that normally accompanies such memories.
I don't think many people can rediscover the magic of VB5, but Maggie Appleton's
["barefoot developers"](https://www.youtube.com/watch?v=qo5m92-9_QI)
might bring these old ideas to life text editor (or prompt box) first, rather than by drawing a button onto an empty window and double-clicking it to attach an event handler.
Say what you might about recent developments in LLMs, even I can write a bash script in 2024.
Combining that idea with local-first and putting those tools in more hands will give the average user a leg up.
These older ideas have resurfaced any number of times over the years, but however proprietary your VBX objects might have been, your Salesforce Data Model Objects are, uh, objectively worse.

Meanwhile, all sorts of cute 1990s ideas have found a home in the minds of 2020s residents.
It feels a bit like the GeoCities era all over again.
You'll hear Google employees unironically discuss the Open Web.
You'll hear SaaS salesmen pitching bare metal.
It's getting harder and harder to step into a living room that isn't running a little homelab or self-hosting an invite-only Mastodon server.

After a heavy decade, filled with this looming feeling like the large cloud vendors might slurp all the juice out of that sweet, sweet LAMP stack fruit with their slippery proboscides, it feels as though perhaps things are turning a corner?
These products only live by way of open source, open protocols, open formats, open interop, and (in the case of email) federation.
Every goofy little homelab is a tiny defense against your favourite database product [getting jeff'd](https://www.youtube.com/watch?v=XZ3w_jec1v8).

There's a gap between these two.
Someone asking ChatGPT to write them a Python script that will download all their YouTube videos from an API and turn it into an Excel workbook probably has very different interests than someone running Navidrome at home so she can listen to her own MP3s instead of paying for Spotify.
But not _so_ different?
It's easy to see how one day soon, both of these budding hackers could be the same person.

This might be the one space where consumers get the toys first.
I'm not sure how many offices let you run a fileserver or Kafka cluster under your desk... but maybe that time is coming?

***

## Boring Tech, Boring Businesses

We all respect [Boring Technology](https://boringtechnology.club/).
But what about the boring businesses?
If you weren't paying attention, you might have read all the above points with some sort of lens that implies they're idealistic, futuristic, and dreamy.
I told you they aren't those things at the beginning, though, remember?
This stuff isn't just for homelabos (which, by the way, I cannot read any other way than "Homelab-O's", like the kind of O-shaped breakfast cereal that tastes of mesquite BBQ homelab) and developers at Signal Messenger.
Or... what's nerdier than that... SecureScuttleButt?
No, that goes too far.
But you get the idea.

Okay, so what does any of this have to do with writing software for an insurance company or a real estate company?
Well, if the world is tilting toward something nice --- a world in which companies respect our (and one another's) privacy and security, a world in which software works even if the manufacturer skips town, a world in which you're probably just buying services and not the raw, unwashed software itself --- then it's a lot less likely that the insurance company you work for is going to ask you to scrape up all the customer PII and provide it to partners via an API.
This may seem like a minor thing, but it could be profound!
If enshittification (I really don't like that word, for what it's worth, but we all know what it means) is one tine of this particular fork in the road then the other isn't subject to the same kind of decay.
The second tine, the better tine, is a mountain of good technology and good ideas, all piled on top of each other.
It's hard to disassemble or degrade the mountain if it's just too big and heavy to bother with.
And the insurance company won't bother.
They'd rather sell insurance.

***

## The Great Convergence

Of course, no one product or company or indie project will ever catch hold of every single one of these ideas.
Some of them even contradict others, so it's not possible to tick every box.
But the greater the number of good ideas any one company or product chooses to keep in its basket, the more capable staff it can accumulate.
It will attract all the savvy customers.
And, slowly but surely, everyone else will follow.

***
