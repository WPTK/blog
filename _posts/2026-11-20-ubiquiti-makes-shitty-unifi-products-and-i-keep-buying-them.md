---
title: Ubiquiti makes shitty UniFi products, and I keep buying them
date: 2026-11-20
description: UniFi has a sleek interface. It looks nice. That's it, that's the
  whole compliment. The rest of this post is me bitching about a company I will
  absolutely give more money to.
tags:
  - unifi
  - UI/UX
  - ranting
published: true
---
## It's pretty (and it hates you)

The interface is sleek the way a museum is sleek, in that it's lovely to look at and nobody wants you touching anything. It is [not a friendly UX/UI](/images/ubiquiti/unifi-ports.png) at all. Somebody clearly spent a long time on the gradients and the little animated topology map, and then ran out of budget before anyone asked "can a person find the thing they came here to change?"

Icons buried in the settings? Yes. Icons with no labels, inside settings pages that have their own settings, like a Russian nesting doll that routes packets.

## Just search for it (lol)

Settings search is useless. Search for `API`, [not there](/images/ubiquiti/unifi-search-api.png). Search for `Control Plane`, nothing. Both of those are real things that live somewhere in that app, and the search box has decided it's none of my business where.

I have had better luck googling/binging/using Lycos for the name of a setting than typing it into the product that contains the setting.

## It could look like this

I am not a designer (my qualifications remain absolutely fuck all), so I redid two screens using rules that actual designers wrote down decades ago.[^1]

- [The dashboard](/images/ubiquiti/mockup-dashboard-a.png) follows Stephen Few's glance test: one look should tell you whether you need to do anything. UniFi's version has around 60 icons on it and not one of them says "your network is working." This one opens with that sentence.
- [The ports page](/images/ubiquiti/mockup-ports-a.png) follows Ben Shneiderman's "overview first, details on demand." UniFi gives every port 12 columns, and this one gets by with four. Where UniFi flags a link running under its speed with `FE` in a slightly different green, this one says "100 Mbps of 1 Gbps" (Jakob Nielsen calls that recognition over recall, I call it labeling things).

I'm not saying Ubiquiti *should* ship this. Plenty of people want all 12 columns, and they're still there, one click into any port. I'm saying they *could*. Every number in those mockups is already on the real screen, so the data and the engineering are done, and the rest took a guy with no qualifications one sitting.

## Ooh, a door closer

They keep expanding without coming back to anything, such as Verizon support for the [5G Backup](https://store.ui.com/us/en/category/internet-solutions/products/u5g-us).[^2] They are too busy releasing another slight $500 variation on their [shitty cameras](https://store.ui.com/us/en/category/all-physical-security).

Or some [travel router](https://store.ui.com/us/en/products/utr) that also sucks.

Or yet another [ceiling mounted access point](/images/ubiquiti/access-points.png).

Or a [door closer](/images/ubiquiti/door-closer.png).

Or an [easy cable](/images/ubiquiti/easy-cable.png).

Or [*two* kinds of EV chargers](/images/ubiquiti/ev-chargers.png).

The door closer is $129 and it closes doors. The EV Station Pro is $1,199, has a 10.1" touchscreen, and is sold out until December 14, so I'm clearly not the only sucker here. The WiFi section of the store lists 38 products right now, and I could not pick four of them out of a lineup.

## Have you tried rebooting it?

Terrible support. The forums are useless. The subreddit is useless.

This isn't their fault, all subreddits and support forums are useless. Every one of them is the same thread: a guy with your exact problem, a reply asking if he updated the firmware, and then "nvm, fixed it" with no further details, posted two years ago by an account that has since been deleted.

## So anyway, I bought another one

I keep buying them because everything else seems worse, or doesn't fully cover what I need. That's the entire business model as far as I can tell: be the least bad option, in a very nice box.

To be clear, I only buy their networking hardware. I'm not buying a Unifi EV Charger, that sounds like a recipe for a homeowners insurance claim. 

See you at the next product launch. I hear it's a PoE-powered desk fan with an Etherlighting ring. 

Footnotes:

[^1]: Few is from *Information Dashboard Design* (2006), Shneiderman from "The Eyes Have It" (1996), Nielsen from his ten usability heuristics (1994). The device names in the mockups are made up. Mine are dumber.

[^2]: The store page for the $99 5G Backup sells its data pack on T-Mobile. Verizon shows up on the $399 5G Max, with two asterisks and the words "Verizon Business." Neat.