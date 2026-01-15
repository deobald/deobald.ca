---
title: "Artificial StupidIntelligence and Airport Sinks"
date: 2026-01-14T00:00:00
categories: ["technology", "open source"]
tags: ["design"]
draft: false
---

I'm already a big fan of [Boring Technology](https://mcfunley.com/choose-boring-technology), but that term normally applies (and, within McKinley's 2015 essay, certainly applies) only to tools for software development and not to apps and services.

I want to use that term everywhere.

The same principles --- that a tool need not be new, flashy, shiny, complicated, intricate, or the absolute perfect fit --- apply everywhere. Liquid Glass is dragging my iPhone 11 SE into a deep dark pit of performance collapse, despite the fact it's every bit the useful little pocket computer it was back in 2020. Liquid Glass is flashy. Zed is an AI-friendly text editor I I like _mostly_ because it's a rust clone of vscode. Zed is shiny. Microsoft 365 Copilot App is, I think, what was once just called "Office." Microsoft 365 Copilot is new.

All of these example products above have problems. None of those problems is exactly [enshittification](https://www.merriam-webster.com/slang/enshittification). Not in the way Cory Doctorow intended when he popularized the term, anyway. (Doctorow focuses almost exclusively on _services_ and the decline brought about by value shifting from end users, to partner businesses, to shareholders.) While I realize that's a household word now, and that most people use it broadly to mean "boo-urns... stuff gets worse," the act of something getting worse is a process. By definition, then, there exists the reverse process: _unshittification_, I guess. I'm not about to tell you about the reverse process. I'm about to tell you about sinks.


## Let's Talk About Sinks

Fuck airport sinks. I understand why they are designed the way they are but they are deeply flawed in a single, funamental way: agency.

Somewhere along the way, it was decided that we should stop spreading germs by touching sink handles. Okay, great. Good idea. It was also decided that the best UI for turning on the sink was a motion sensor. Not my first choice, but alright, fine. Finally, it was also decided that the motion for turning on the sensor should be to put your hands under the faucet. Makes sense, right? You need to put them there anyway. The sink is anticipating what you want! Seamless.

Except it isn't.

I want an explicit, atomic operation: Turn On Sink. I want the inverse operation: Turn Off Sink. I explicitly do not want the sink to try its best to guess whether I'm washing my hands or not. These guesses frequently turn out to be wrong. The act of washing one's hands involves movement, which often turns off the sink. Little kids struggle with the angle, depending on the sensor. This is a bad design. The sink shouldn't be guessing what we want. We should tell it.

Let me be the first to say: the airport sinks were the harbinger of an AI that will one day ruin human civilization.


## ASI vs. Software That's "Done"

Let me be clear from the start that I'm not an AI doomer. It's early 2026 as I write this and LLMs are here to stay, even if the billions of dollars currently being burnt to keep up the pace of progress are not. (No matter how many needles you stab in your Sam Altman voodoo doll, I'm not holding my breath for a [StackOverflow comeback](https://blog.pragmaticengineer.com/stack-overflow-is-almost-dead/).) However, I do believe it's notable that frustration with AI, and the fact companies are cramming it into everything from help desks to refrigerators, is almost as common in the average household as the word "enshittification." What I wish would replace that frustration, as a household concept, is a more general-purpose frustration: that software can be _done_ and that most companies simply refuse to let that happen. Cramming AI into every nook and cranny of Microsoft Office isn't a step toward [Artificial SuperIntelligence](https://en.wikipedia.org/wiki/Superintelligence#Feasibility_of_artificial_superintelligence) ... it's just the latest fashion hoodwink that allows Microsoft to pretend that Excel 2024 was somehow a noteworthy improvement over Excel 97 for the vast majority of its users. For most of us, Excel 2007 on Windows XP will probably feel very familiar, ribbon and all.

Excel is just a spreadsheet and AI "features" are the airport sinks of the software world. Even if they kind-of work, they're not really what we need.

Of course, "done" doesn't mean software remains untouched, like an Amiga program from 1987. There is something beautiful about seeing systems from that era come back to life, with a clear purpose to the applications: paint programs for drawing without a subscription, word processors for writing your resume without Clippy, and games for pleasure without microtransactions. But we don't all need to become retro computing afficionados. We can learn from these examples, instead.


## Make Stupid Programs

I frequently hear software developers throw around the word "appliance" while discussing simple programs that do one thing well, often in a derogatory way. Let's take this a step further and call these programs "stupid". Stupid appliances. Boring Technology.

There's a utility to this idea at our current inflection point with LLMs and AI in general. Unless you are specifically using a program for its model and weights, you probably don't want "AI" involved at all. The program can still be intelligent --- sophisticated, even --- but it's a kind of stupid intelligence. It's the blind, rule-following intelligence of computing machines that made us fall in love with them in the first place.

Of course, the word "program" has taken on new meaning in the 21st century. We're probably talking about an _app_, which may include many different devices and form factors as targets (watches, touch screens, TVs, and desktop computers). It's probably backed by a _service_, even if the purpose of that service is simply to provide backups, versioning on data, and interop. A "program" in 2026 is, more often than not, a distributed system of messaging, databases, and multiple distribution targets.

So make those things stupid, too. Utilize dumb pipes. Use open protocols. Save things to files. Open source your service and make it a drop-in, single-file binary. Instead of having "integrations," provide open APIs over open schemas and consume them in turn. Send your thing, whatever it may be, everywhere: phones, Linux, MacOS, Windows, the web. Let your customers run their own backend (and consequently realize they probably don't want to). Charge for your service as a utility instead of charging for this quarter's features.

Make the UI and UX as simple as possible. Drop the transparency and animations. Run your stuff on old hardware and make sure it still works without demanding your users have 256GB of RAM for your little web app. Remember the design constraints of the original iPhone leading to fewer visual elements? Each of them big and thumb-clickable? Try doing that, but don't stop it from being a joy to use. Don't prevent yourself from making it beautiful. Make sure IJW, every time. The less there is to it, there less there is to go wrong.

"Stupidly simple" was once, for what feels like the briefest of moments in design history, the greatest compliment your product could receive. Let's bring that back. Give your users agency. Fewer airport sinks. More Artificial StupidIntelligence and Boring Technology, please.

* * *
