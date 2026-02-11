---
title: "The Problem With LLMs"
date: 2025-12-31T00:00:00
categories: ["technology", "open source"]
tags: []
draft: true
---

## Premise

Six months ago, a friend of mine, with whom I work on the nonprofit [Pariyatti mobile app](https://pariyatti.app), sent me this blog post by Vijay Khanna: [From Idea to App in 7 Hours](https://medium.com/@vijay.khanna.email/from-idea-to-app-in-7-hours-how-i-built-a-vocabulary-app-with-gemini-gemini-cli-and-gemini-code-4c210d7d4bab). By now, this is a fairly common zero-to-one LLM coding story. (_LLM_ is short for _Large Language Model_ but for the purposes of this essay, we'll use it as a substitute for what is broadly categorized as "generative AI" in early 2026. These systems are trained on large bodies of text, images, video, etc., which enable them to produce meaningful responses when prompted.)

The question was posed: could this help us implement new features in the Pariyatti app more quickly?

Indeed it could. But there are ethical concerns to consider before diving into the deep end with LLMs and, unfortunately, they aren't simple concepts to contend with.

Pariyatti's nonprofit mission, it should be noted, specifically incorporates a strict code of ethics, or _sīla_: not to kill, not to steal, not to engage in sexual misconduct, not to lie, and not to take intoxicants.

In this conversation, two of these _sīla_ are of interest to us.

## Ethics

The fundamental ethical issue with LLMs is plagiarism. LLMs are, by their very nature, plagiarism machines. In the early days of GitHub Copilot, back before the Copilot brand was subsumed by the Microsoft juggernaut and the cute little sopwith flying helmet-plus-goggles logo was replaced with meaningless rainbow tilde, it would regurgitate training data _verbatim._ That's been patched in the years since, but it's important to remember a time -- not that long ago -- that the robots weren't very good at concealing what they were doing.

_As a quick aside, I am not going to entertain the notion that LLMs are intelligent, for any value of "intelligent." They are robots. Programs. Fancy robots and big complicated programs --- but computer programs, nonetheless. The rest of this essay will treat them as such. If you are already of the belief that the human mind can be reduced to token regurgitation, you can stop reading here. I'm not interested in philosophical thought experiments._

Plagiarism requires two halves. The first half of plagiarism is theft. Taking something which is not one's own. It's that peculiar kind of theft where the victim may not even know they're being stolen from: copyright violation. The second half is dishonesty. Plagiarism requires that the thief take the stolen work and _also_ lie about its origins. Most plagiarists [make minor modifications](https://youtu.be/yDp3cB5fHXQ) but all plagiarists pass the borrowed work off as their own.

LLMs do both of these things.

LLMs need to eat and to eat they need to steal. Their entire existence is predicated on the theft of copyrighted works and your usage of LLMs is predicated on your willingness to consume pirated work. If it matters to you, these are not exclusively the copyrighted works of large corporations or universities. Especially in the case of source code, it is often the work of individuals. In the case of open source, that work tends to be licensed in a way that is incompatible with LLM training. LLMs break source code licensing. In the case of text, graphics, audio, and film, the work includes struggling artists. Realistically, other than those few artists who sell burned CDs out of the trunks of their cars to keep their work off the internet completely, it includes _every_ struggling artist.

When you use an LLM, the product of that use is, inherently, a lie. It conceals the trillions of documents it used as source material. And if you claim its output as your own, you not only pander to the lie. You give it a home in your heart.

If you wouldn't watch a torrented movie or read a downloaded e-book or listen to "borrowed" MP3s, you shouldn't be using LLMs.

Because I am not in that category of people, I've been using LLMs for a month. But the lies we tell ourselves are more insideous than a willingness to dip our toes into grey-area theft. Among other things, the lies concern me.

## The Positive



* a11y
  * screen time
* i18n (Pariyatti)

## ways of working

* spectrum: careful (C, rust) => careless
* LGTM
  * CSS
  * Rust

## problems

* addiction
* exhaustion
* "don't get too excited, too quickly" = the sweaty yegge
  * difficult to reconcile a calm outlook w the exponential pace of LLM improvements
* "open" models vs. proprietary
  * gatekeeping
  * feeds only itself
  * but: No Moat
