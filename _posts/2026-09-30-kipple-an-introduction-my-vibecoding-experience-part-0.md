---
title: "Adventures in Vibecoding: Pre-History (Part 1: Replit + Traffic Cams)"
date: 2026-10-05
description: "The author explains how he wound up giving Replit money that he
  just turned around and handed to another company anyway. "
tags:
  - kipple
  - selfhosted
  - vibecoding
  - replit
published: true
---
## A boy and his (vibe)code

I am a tinkerer (and historically not very good at it). I have an old Supermicro 24-bay server running in my closet in my office. I run/ran all kinds of random stuff, like [bentopdf](https://github.com/alam00000/bentopdf), [changedetection](https://github.com/dgtlmoon/changedetection.io), and the [skystats database for my ADS-B receiver](https://github.com/tomcarman/skystats).

When [vibecoding](https://en.wikipedia.org/wiki/Vibe_coding) dropped, I was all over it. I signed up for Replit, and then wondered how I wound up as a person with *two* AI subscriptions.

## Replit + Traffic Cameras

But what would I build? I am not exactly an idea man. I had recently received approval to access my state DOT's API, so I thought I'd take a stab at doing something with that. I thought it would be nifty if I could see all the traffic cams around me, so I could have them up on a monitor/TV while I was working. Who wouldn't want to see local traffic through shitty, low-res, dirty-lensed cameras?

Well, despite real efforts to put thought into the prompts and reviewing the plans, it basically created a heaping pile of slop. There were so many tokens burned just trying to get the app to load, as the error messages gave clear codes and file paths. Replit chugged away, throwing band-aid after terrible band-aid at the slopstorm. There was confusion (for both me and Replit) throughout.

It took roughly 2-3 days of me committing a bit of time here and there to get something that made this: 
![](https://github.com/WPTK/blog/blob/02ae52cd5a1754ecd1418cc37ebab921f94affe9/images/image.png) 

*It ain't great. Take special note that while this app was "finished", I still couldn't get the cameras to actually load/appear. This was...kind of the point of the app. I dutifully handed Replit $$25$ so they could turn out the same product I could've. Remember, I don't code.*

I wasn't disheartened, though. I knew I just needed to keep working at it, and I'd get *something* I could use. So I did what every other technical minded person does when presented with this issue: I bailed on it and never touched it again.

### But the robot at least wrote clean code, right?

It didn't.

Preface here, and this is an important one: I don't program. I don't code. It's my one limiting power in the world of tech. I can sort of read Python and Go, but I just have *never* been able to grasp the foundations of any language I've tried. If I could, I would be one of those COBOL millionaires everyone talks about.

So for this portion of the article, I fed the code from Replit (from roughly April 2025) into Claude. Let's see what this new robot says about the old one:

##### The prompt:

`Please review the code, point out obvious or blatant errors, poor/sloppy code, or anything you would consider to be junk or poor-quality work. Provide me a succint response at the end with overall issues (and counts of issues if there are too many to list)`

##### Claude (Sonnet 5.5 - Medium) said:

```markdown
This is a Flask and JavaScript app that streams Georgia DOT traffic cameras in a draggable grid. A read-only code review turned up roughly 80 issues: 15 security problems, 34 bugs or broken features, and 31 pieces of sloppy code.

The worst ones:

- Security: an open video proxy anyone can abuse, Flask debug mode exposed to the network, a hardcoded API key and session secret committed to git, and unescaped user content that allows cross-site scripting.
- Broken features: layout template buttons that crash every time, a "View" link that goes nowhere, a spinner that can hang forever, and a layout loader that reports success when cameras failed.
- Sloppiness: copy-pasted code, dead files, double-loaded libraries, leftover debug logging, and bugs patched by symptom instead of cause.
```

Yeah, there's way more. Check out the gist with the full 80 discovered issues [here](https://gist.github.com/WPTK/b689e55a4fbed995cc49c942a3c6842c).

The fun part is that *I know what most of it means, but could never verify it myself, let alone fix it myself*

Then I discovered VS Code with GitHub Copilot Pro built in. Microsoft had clearly solved my problem, so away I went to the Next Big Thing. Will I add a third subscription to my spiraling AI spend?