---
draft: true
title: "Optimistic Computing"
date: 2024-10-16T00:00:00
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
Those things are nice and fine but they have a certain taste I'm trying to avoid here.
I think that taste is the aftertaste of hard tack and hummus washed down with a Twenty Winds Chai Tea Latte.

This is not the optimism of the hippies or artists.
Whatever I'm talking about, it still makes money.

Both of these extremes _crave_ something.
It might be another trillion dollars thanks to the latest business gadgetry.
It might be a technological answer to society's fundamentally social problems.
It might be an idolized 1980s that never really was.
It might be nothing more than a masturbatory and self-indulgent performance.
Real optimism doesn't really want anything.
Rather, it's just anticipates a specific inevitability.

***

## Darn Great Ideas

The first of these great ideas is easily misattributed to the Apple of the mid-2000s: simplicity and ease of use.
Sure, they tried their best, too.
The 4th generation iPod is still a work of art.
But as we all know, the true herald was 1997's _Diablo_ by Blizzard North.
David Brevik describes the key design decision this way:

> "It had to be less than a minute, from boot to kill."

I [love this quote](https://www.youtube.com/watch?v=huPF3Gid7DE&t=390s)
and I've abused it on every product I've built since.

So much is bundled into this idea.
_It Just Works_ is home here; you don't get to give your users a manual or a How-To or a README or a Quickstart.
Setup for systems like this is "push the power button to turn it on" and there's a ton of social and technical complexity that one must eliminate to do this correctly.
Complexity can be painted over by way of an artificial
[narrow waist](https://www.oilshell.org/blog/2022/02/diagrams.html)
like the App Store, but it's always more satisfying when someone
treats this idea as fundamental to their product.

There are a bunch of other ideas that come for free with "boot to kill":
Limiting (or eliminating) dependencies, simplicity, raw ease of use, less-is-more, and No Login.
As developers, we all appreciate small, simple, composable things with zero dependencies.
But as users?
One of the most annoying points of friction in software these days is the seemingly-ubiquitous need to Create A New Account To Get Started for all sorts of software that shouldn't need it.
TODO: Gather Town and Excalidraw

***

* chat w abhinav omprakash
* resurgence of retro computing
* an app/game for a 40-year-old amiga still works
* "everything is harder with the internet" is a cop-out
    * local-first
* convergence of ideas:
    * local-first
    * longevity
    * sovereign computing
    * self-hosting
    * bare metal
    * zero deps
    * open source
    * right to repair
    * good design
    * simplicity
    * no login
    * less, not more
    * ease of use
    * reliability
    * it just works
    * 1 minute boot-to-kill
    * commercially viable without producing another new billionaire
    * software can be "Done"
    * open protocols (nokia phone: tel, text ... fax, email)
    * federation (email, imap - gmail=>fastmail)
    * interop / open formats / a way out / exit strategy
    * Right To Repair
    * retro computing
    * demoscene
* a different kind of "optimism":
    * https://www.youtube.com/watch?v=fgm5uZaS3-E&t=840s - "like button" swizzles
    * "optimism" at 17:00-ish / 17:30+
* https://permacomputing.net/
    * "it's like permaculture, but for computing" isn't a very good description
    * https://permacomputing.net/design_for_descent/ - enables ubiquitous computing, lower-powered devices, etc.
    * Build on Solid Ground - low deps, stable deps, Boring Technology
    * share source code AND design
    * facilitate observation (visualization)
    * avoid centralization
    * disagree on https://permacomputing.net/retro/
