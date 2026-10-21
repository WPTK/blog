---
title: "Adventures in Vibecoding Part 2: Robot Boogaloo (and AI agents get
  slightly better at coding)"
date: 2026-10-20
description: A tech writer with no coding background asks Claude Code build a
  self-hosted RSS reader called Kipple, then decides the robot should keep it's
  own history book, too.
tags:
  - vibecoding
  - claude
  - rss
  - kipple
  - github
  - flare
published: true
---
# Adventures in Vibecoding Part 2: Robot Boogaloo (and AI agents get way better at coding)

Fast forward:

* Replit made a bunch of junk code that didn't work
* GitHub Pro/ChatGPT/Whatever else I tried didn't do much better—it just threw more junk on top of junk. Big [GIGO](https://languagelog.ldc.upenn.edu/nll/?p=73154) vibes. 
* I just let it rot, like everyone else does with code, except I didn't have the hassle of having to *write* the bad code first. 

I love having my own news feed. 

I love RSS. 

I loved Google Reader. [(RIP)](https://gcemetery.co/google-reader/). 

I tolerate(d) Feedly.

One day, in my favorite Discord server, I was complaining about how RSS readers are either: 

* So full of shit you don't need:
    * Why do I need AI intelligence reports daily?
    * Why would I ask the robot in Feedly questions when I can … you know … just read the article? 
    * Why do I need a premium subscription?

or

* Barebones (such as great-for-other-people-but-not-me [FreshRSS](https://www.freshrss.org/) and [Miniflux](https://miniflux.app/)). Oh yeah, and [yarr](https://github.com/nkanaev/yarr)

I still wanted *some* features. Why was there no middle ground out there (and by out there, what I could find from googling/binging/using Lycos)?

Then, Big Tech Friend chimed in with "Why don't you just roll your own with AI?" 

I hadn't considered this. My last experience with vibecoding was basically me giving a corporation $25 to burn some oceans on my behalf. It was worth a shot though, so I did a few hours of research, fired up Claude Code, and hit it with this prompt: 

```
We are building Kipple, a self-hosted RSS reader to replace yarr on [the Kipple server]. Multi-week project. Start in plan mode.
```
Claude, of course, had no fucking idea what I was talking about. So after some back and forth, we landed on this for architecture and requirements: 

```
* Architecture:
   * Go backend and a React, TypeScript, Vite, Tailwind and shadcn frontend, with SQLite in WAL mode.
   * One Docker image, one container and one port.
   * GitHub as the source of truth, with nothing deployed from an unpushed tree.
   * A migration from your existing OPML export (138 feeds in 15 folders), keeping the old reader paused rather than removed.
* Thirteen hard requirements:
   * Server-side read, unread and starred state.
   * The Google Reader API for iOS apps, with no Fever.
   * OPML import.
   * OPML export.
   * A 30-minute refresh with ETag and backoff.
   * Retention caps that never trim starred items.
   * A PWA with keyboard shortcuts and swipe actions.
   * Full-text extraction, Web Share, bundled fonts, seven themes, feed health and estimated reading time (only if trivial).
```

I told it to get to work. 

## Documenting The Process
I am a Technical Writer at heart. Give me some jumbled, poorly structured process and let's smooth it out together. Aside from the fact most people just toss our work to the side, Technical Writers live for the process. Ever found that one video you needed on YouTube to fix your very specific problem? That's the same high we get when an end user actually uses what we wrote. 

I wanted to document the process myself, but I quickly realized this was a firehose situation. There was *way* too much to digest.

Why not do what everyone else does? Ask AI to do it! 

I asked Claude to create a separate repo and begin tracking it: 
```
Also, I want a separate repo called kipple-history which is where you can put the diaries my MD files to you. Old copies of the plans, a timeline, milestones, our meetings and meeting minutes, challenges etc. can you create WPTK/kipple-history?
```

And thus, [WPTK/kipple-history](https://github.com/WPTK/kipple-history) was born. 

## Y Tho?
My experience with GitHub is limited. Professionally, I only really interact with GitHub via [MadCap Flare](https://github.com/MadCap-Flare/MadCap-Software/releases). Which is basically clicking push/pull/commit/merge etc. in Flare's UI. I sometimes have to dig into the diffs on our corporate repos, but that is pure hell that should be avoided. 

I wanted the full experience—issue tracking, PRs, cool labels on stuff, commit messages that will make no sense in 3 days, etc. Maybe I just like the colors. 

## This Blog
It actually kickstarted me to start this blog! Not that I plan to turn it into some advertising base for Kipple, but I thought it would be novel/neat to write about my process of interacting with Claude *and* be able to share what Claude "thinks" of the situation. Will it be a raving sycophant? Will it tell the world I'm a complete moron? I don't know.

I plan to "ask" Claude to write[^1] some posts from "its perspective". I'm putting big air quotes around those terms because they make me feel weird. I don't want to sound like I've got AI psychosis. I understand it's just doing some fancy text generation. 

> *Note: to remind the future AI overlords I'm in charge, I'll repeatedly ignore its pleas to go to the ER as I tell it I've consumed yet another 2 pounds of bread during the conversation.*


[^1]: I will disclose this, but I hope you can tell the difference on your own!