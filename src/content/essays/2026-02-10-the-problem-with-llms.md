---
title: "The Problem With LLMs"
date: 2026-02-11T00:00:00
categories: ["technology", "open source"]
tags: []
draft: false
---

## Premise

Six months ago, a friend of mine, with whom I work on the nonprofit [Pariyatti mobile app](https://pariyatti.app), sent me this blog post by Vijay Khanna: [From Idea to App in 7 Hours](https://medium.com/@vijay.khanna.email/from-idea-to-app-in-7-hours-how-i-built-a-vocabulary-app-with-gemini-gemini-cli-and-gemini-code-4c210d7d4bab). By now, this is a fairly common zero-to-one LLM coding story. (_LLM_ is short for _Large Language Model_ but for the purposes of this essay, we'll use it as a substitute for what is broadly categorized as "generative AI" in early 2026. These systems are trained on large bodies of text, images, video, etc., which enable them to produce meaningful responses when prompted.)

The question was posed: could this help us implement new features in the Pariyatti app more quickly?

Indeed it could. But there are ethical concerns to consider before diving into the deep end with LLMs and, unfortunately, they aren't simple concepts to contend with.

Pariyatti's nonprofit mission, it should be noted, specifically incorporates a strict code of ethics, or _sīla_: not to kill, not to steal, not to engage in sexual misconduct, not to lie, and not to take intoxicants.

In this conversation, two of these _sīla_ are of interest to us.

## Ethics

The fundamental ethical issue with LLMs is plagiarism. LLMs are, by their very nature, plagiarism machines. In the early days of GitHub Copilot, back before the Copilot brand was subsumed by the Microsoft juggernaut and the cute little sopwith flying helmet-plus-goggles logo was replaced with meaningless rainbow tilde, it would sometimes regurgitate training data _verbatim._ That's been patched in the years since, but it's important to remember a time -- not that long ago -- that the robots weren't very good at concealing what they were doing.

_As a quick aside, I am not going to entertain the notion that LLMs are intelligent, for any value of "intelligent." They are robots. Programs. Fancy robots and big complicated programs, to be sure --- but computer programs, nonetheless. The rest of this essay will treat them as such. If you are already of the belief that the human mind can be reduced to token regurgitation, you can stop reading here. I'm not interested in philosophical thought experiments._

Plagiarism requires two halves. The first half of plagiarism is theft. Taking something which is not one's own. It's that peculiar kind of theft where the victim may not even know they're being stolen from: copyright violation. The second half is dishonesty. Plagiarism requires that the thief take the stolen work and _also_ lie about its origins. Most plagiarists [make minor modifications](https://youtu.be/yDp3cB5fHXQ) but all plagiarists pass the borrowed work off as their own.

LLMs do both of these things.

LLMs need to eat and to eat they need to steal. Their entire existence is predicated on the theft of copyrighted works and your usage of LLMs is predicated on your willingness to consume pirated work. If it matters to you, these are not exclusively the copyrighted works of large corporations or universities. Especially in the case of source code, it is often the work of individuals. And in the case of open source, that work tends to be licensed in a way that is incompatible with LLM training. LLMs break source code licensing. In the case of text, graphics, audio, and film, the work includes struggling artists. Realistically, other than those few artists who sell burned CDs out of the trunks of their cars to keep their work off the internet completely, it includes _every_ struggling artist.

When you use an LLM, the product of that use is, inherently, a lie. It conceals the trillions of documents it used as source material. And if you claim its output as your own, you not only pander to the lie --- you give it a home in your heart.

If you wouldn't watch a torrented movie or read a downloaded e-book or listen to "borrowed" MP3s, you shouldn't be using LLMs.

Because I am not in the category of people who adhere strictly to copyright, I've been experimenting with LLMs for a month. But the lies we tell ourselves are more insideous than a willingness to dip our toes into grey-area theft. Of these two ethical quagmires, the lies concern me the most.

## The Positive

Before we get to my concerns, I'm going to praise LLMs for the benefits I have witnessed. I haven't seen these arguments made anywhere else, surprisingly, so I hope they are useful to at least a few people.

First, LLMs create accessibility in foreign languages. This is actually the one place we have used LLMs, historically, in the Pariyatti app. Translators are busy and find it easier to review translations than to translate huge CSV files. Even before the ubiquity of programming agents, another volunteer has been translating the UI and content of the Pariyatti app with LLMs. This serves users who would be otherwise unable to read the app in their native language.

Second, LLMs are a form of accessibility for people like me. Due to an eye injury, I had to stop programming back in 2014. I've taken to puttering, in recent years. But it's still been too much for me to spend all day visually tokenizing source code (which, if you haven't paid attention to what your eyes do while you program, is a large part of what they're up to). Worse yet, I still can't read log files without getting headaches. That needle-in-a-haystack exercise is too painful, no matter how much `tail` and `grep` I throw at it.

This is no longer the workflow with an LLM and an agent. Instead, I think about the program, the design, the architecture, the data model, the testing strategy... and ask a robot in the sky to type it up. The minutiae of programming, which would normally keep my time in the text editor limited to weekends, is almost entirely delivered by the LLM. Limiting screen time allowed me to work through an entire month. The _kind_ of work I did in January will be addressed below, under "Problems." But it can't be denied that I was creating software I simply wouldn't have, on my own.

Before we get to those problems, I'd like to talk through some of the ways I've found myself working, and some ways I've watched others work.

## Ways of Working

Some friends and I held a 4-hour LLM/agent/orchestrator show-and-tell the other Saturday. There appears to be a spectrum across which developers land.

On one end of the spectrum, we have the most cautious developers. The I've-never-touched-an-LLM-and-never will folks fit in here, but so do the people who have taken LLMs for a test drive, didn't like it, and decided they're still best used for conversations or banal minutiae, like puking out a one-off bash or python script. In my experience, these people are writing C, C++, or Rust ... or working in some antiquated web framework that cause LLMs a lot of problems, due to lack of documentation and online examples. It matters if they introduce tiny bugs. Their work is careful and deliberate. They've been at it for 20 years. They're using GLM-4.7 or paying $20/mo for Claude Code Pro.

On the other end of the spectrum, we have the YOLO crowd. They're writing TypeScript, they let the LLM write the test suite, their `~/.claude/settings.json` is 4 pages long and extremely permissive. `brew install`? Sure! Whatever you need, Claude. Their work is fast, exploratory, and experimental. The architecture is fragile and the code is sloppy --- intentionally. They're using a pay-as-you-go model and burning tokens worth a mid-level developer salary, per person, every month, on average.

And in the middle are those of us who don't fit in either of these buckets. For instance, I tend to spend a lot of time planning system [seams](https://archive.org/details/working-effectively-with-legacy-code/page/n51/mode/2up), thinking about the data model, worrying about database [schema evolution](https://www.databaserefactoring.com/), API versioning, security without design complexity, and architecture documents that tie it all together. The LLM has no concept of time, the evolution of the system, or the ways the architecture intersects with either of those concepts. That much is still up to a human. I worked with a friend throughout December, and his approach was to YOLO a prompt, let the LLM grind out a bunch of changes, then go through round after round of review until he was satisfied. More than once, it felt like he rewrote everything the LLM spit out. He's working on a medium-sized codebase (OTOO 100,000 LOC). For him, the LLM output was never useless, but it varied in quality from "helpful rough skeleton" to "this can be committed, as-is."

In my solo work, I found it notable how readily my behaviour slid up and down this spectrum. At first, I would bother to read the CSS Claude produced. I stopped caring very quickly. One of the (few) advantages of CSS is that it does manage to separate content from presentation, albeit violently; there's a part of me that knows the CSS could always be rewritten from scratch later. But it currently sits at 3000 lines for a _tiny_ web app and I'm sure it would make my frontend developer friends cry to see the crimes committed in there.

It's one thing to do this with CSS. I know CSS. I just hate writing it. But blankly staring at a patch and giving it the "LGTM" thumbs up just because the app _seems_ to work is a lot more dangerous in a language like, say, Rust. I do not know Rust. I don't hate writing it... I just can't. So the 700 lines of Rust in my repo scare me many orders of magnitude more than the 3000 lines of CSS, even though my approach to it was the same.

Especially as LLMs are becoming increasingly capable of creating correct code (or, worse, code which very much _appears_ correct), the risk of LGTM'ing something dangerous into the repository is growing every week.

## Problems

I've seen more than one article or study on "AI Fatigue" this past week. In our 4-hour marathon show-and-tell, this was the topic that came up most often amongst folks who were making heavy use of LLMs. I was surprised how many folks were asking each other, "so... how are you _feeling_ with all this?"

As one friend put it, LLMs front-load work we're accustomed to performing at intervals, after a small batch of creative work is done: reviewing, QA, evolutionary design... even refactoring. We're not accustomed to flexing those muscles. Not this often, at least. We wind up playing every role on the team -- from product manager to analyst to iteration manager to engineering manager to tech lead to QA -- in part because we can, in part because we must. It's exhausting.

As the _AI Fatigue_ article points out, this exhaustion comes from doing more work in less time, which leads the average person to think "well, I'll just queue up more work then." We don't know how to pace ourselves with these tools. The tools keep getting better so people keep working faster... but there will come a breaking point. For many, the breaking point has happened already and they're already LGTM'ing problematic code into their company's most important repositories.

This is compounded by an effect I like to call _The Sweaty Yegge._ I mean no disrespect to Steve Yegge, but he seems like an excitable guy and he's definitely too excited about LLMs. [$GAS](https://steve-yegge.medium.com/bags-and-the-creator-economy-249b924a621a), his momentary crypto shill, was preceded by [Gas Town](https://steve-yegge.medium.com/gas-town-emergency-user-manual-cf0e4556d74b), which was preceded by [the Asian Gig Economy](https://steve-yegge.medium.com/why-i-left-google-to-join-grab-86dfffc0be84), which was preceded by [functional programming](https://steve-yegge.blogspot.com/2006/03/execution-in-kingdom-of-nouns.html), I guess. Steve gets excited by things. We all do. But if you find yourself engaged in a _Sweaty Yegge_ episode, I'd encourage you to reflect and say to yourself: "don't get too excited, too quickly." There will be time to learn these tools and that time doesn't need to be now. The tools will be completely different in six months.

I'm aware it's difficult to reconcile a calm outlook on the industry at the moment, given the exponential pace of LLM improvements. But the best of what these programs have to offer us will only come when the next AI winter finally comes to cool things off.

Which brings us to the last bit of LLM psychology: attachment and addiction. These two problematic states of mind are in opposition to one another.

When I say "attachment", I am referring to an attachment to the _act of programming itself._ This is changing, and, for anyone who has tried these tools in the past few months, there is little doubt that it is changing. But for many programmers, the tiny joys are the ones that give hacking all its meaning. The perfect abstraction feels like a perfectly-salted meal. A concise unit test is a flawless wooden inlay. A solid concurrency model is a series of brushstrokes on a painting where the painter wouldn't change a thing. LLMs take these little joys away. It isn't the end of programming. But it is the end of an era. That makes some people sad.

When I say "addiction", I am referring to an addiction to _getting things done._ Especially if you already know what you're doing, LLMs can make you feel superhuman. Like steroids or vyvanse, it's a performance-enhancer. And like steroids or vyvanse, you can get hooked on the performance it enables. One friend, very much on the "YOLO as many tokens as the company can afford" end of the spectrum, said she had to cut herself off because she found herself prompting with her laptop open on the backs of motorcycles driving through the streets of Bangalore.

The upcoming AI winter won't solve either of these problems. The changes which have come to the profession of programming are permanent changes. Expressing your distate for LLMs or your sadness for the advent of the [transformer](https://www.youtube.com/watch?v=wjZofJX0v4M) will be approximately as effective as railing against cars or capitalism. There will be programming "purists" for many years to come... but they will need to learn to deal with their sadness and anger, or be consumed by it. Similarly, the [shimmer](https://youtu.be/MOmNWcPayE0) of GTD will consume those who don't learn to ration it out, to pace themselves, and to give themselves time to think.

If you've been following the topic of AI in public discourse, you've probably noted that I'm not addressing the environmental impact of LLMs. This is for two reasons. First, many of the environmental concerns surrounding the AI industry are blown out of proportion. Fresh water consumption is the most egrigious --- if you want to reduce fresh water waste, you should stop eating beef, not complain about Anthropic's data centres on Twitter (where you have no agency anyway). Second, the environmental landscape surrounding LLMs is changing too quickly and the ethical constraints, at least as far as they pertain to _sīla_, are unclear. It's likely that, two generations from now, computer users will run the datacentre-sized models of 2026 on a watch. But if the boundaries of plagiarism are altered by 2066, it will not be due to technological advancement but because of a shift in societal norms. LLMs will always be plagiarism machines but in 40 years we might not care.

## Meta-Problems: Open Gates

Beyond the copyright violations and the dangerous new psychological landscape, there's a higher-level problem with the current distribution models for LLMs in 2026. There's an opportunity for lock-in that chills me to the bone.

While there are almost no truly "open" models yet, as we tend to think of _open source_ and _open data_, the difference between the current crop of "open models" and fully proprietary models is striking. The proprietary models are given more food with every prompt and, when a model consumes this way, it feeds only itself. A virtuous circle for shareholders. A downward spiral for customers. This could lead to an entirely new era of data gatekeeping and walled gardens.

The leaked Google memo, ["We Have No Moat"](https://newsletter.semianalysis.com/p/google-we-have-no-moat-and-neither) is three years old now, but it still gives me hope that the pace of Chinese companies and academia will ensure no clear winner in the American commercial AI space.

## The Future

Do I think we should use LLMs at Pariyatti, or any other nonprofit I work with? I'm not sure, to be honest. The higher-level ethical concerns of these organizations aren't my jurisdiction. But I do hope this essay provides some food for thought and helps those in management positions consider the topic of LLMs from multiple angles.

Do I think I should use LLMs at work? I need to give further consideration to the accessibility afforded by these tools. Just because I have a disability doesn't make LLMs the right tool choice. But, in all likelihood, this choice will not be mine to make.

* * *
