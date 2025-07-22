Template Data Repo
==================

[![Latest release](https://img.shields.io/github/release/BSData/TemplateDataRepo.svg?style=flat-square)](https://github.com/BSData/TemplateDataRepo/releases/latest)
[![Commits (since latest release)](https://img.shields.io/github/commits-since/BSData/TemplateDataRepo/latest.svg?style=flat-square)](https://github.com/BSData/TemplateDataRepo/releases)
[![Open bugs](https://img.shields.io/github/issues/BSData/TemplateDataRepo/bug.svg?style=flat-square&label=bugs)](https://github.com/BSData/TemplateDataRepo/issues?q=is%3Aissue+is%3Aopen+label%3Abug)
[![Contributors](https://img.shields.io/github/contributors/BSData/TemplateDataRepo.svg?style=flat-square)](https://github.com/BSData/TemplateDataRepo/graphs/contributors)
[![Commit activity the past year](https://img.shields.io/github/commit-activity/y/BSData/TemplateDataRepo.svg?style=flat-square)](https://github.com/BSData/TemplateDataRepo/pulse/monthly)
[![Chat on Discord](https://img.shields.io/discord/558412685981777922.svg?logo=discord&style=popout-square)](https://www.bsdata.net/discord)

# 1. Implementation Plan
## 1.1 Generic Catalogues
There are now generic catalogues for Weapons, Wargear, Special Rules, and Traits. If an entry of the respective type is duplicated, it should go in the generic catalogue.
These have been split out to aid maintainability, rather than lumping it all into the GST.
## 1.2 Comments on Variable Rules
HH3.0 has a lot of Rule (X) rules in it now. When adding a variable rule to a weapon/model, please add a comment showing what value the rule has. This aids maintenance as we can tell what rules are at a glance. Additionally, make sure to add a name modifier so the rule is represented correctly.
## 1.3 Referencing Faction
As we are now using a parent/child force model, if you need to determine which faction a detachment belongs to, use "Instance of -> in roster -> Child: <the target catalogue for that faction>"
## 1.4 No Buckets/collectives
Units that have per-model customisation should be represented as such without the use of generic rollers/buckets/collectives to compress them. NR handles output fine by clumping models with the same equipment together so this is no longer the issue it once was.
## 1.5 Points Costs and Mandatory Models
### 1.5.1: Where Points Go
Points costs should be attributed to a unit under Shared Selection Entries, so they are imported across catalogues correctly.
### 1.5.2: Mandatory Models
Any models which are mandatory in a unit, eg Seargeants, Champions, whatever, should cost 0pts. Units of a single model such as dreadnoughts, vehicles, and special characters, are Mandatory Models.
### 1.5.3 How Points are Broken Down
Points costs should be broken down as follows:
- If a unit has a per-model cost, this should be accounted for per model
- If a unit has Mandatory Models, they should cost 0pts
- Any remaining points costs should be a root cost on the unit itself
For example:
- An assault squad costs 145pts, and comes with 9 Legionaries and 1 Sergeant. 
- The legionaries are 12pts each, so they make up 108pts of the cost.
- The Sergeant is a Mandatory Model and thus costs 0pts
- The remaining 37pts is placed on the unit itself

## BSData Overview ##

__What's this?__

BSData organisation created this project. It's a GitHub repository of datafiles.
Maintained by community, in no way endorsed by BattleScribe or any other company/publisher. If you want
to develop - cool! We need you! Take a look at [our homepage][BSData.net]

__Okay, nice project. Is it actually working?__ _I just want those files..._

Yeah! We have it hosted on AppSpot. Take a look: [BattleScribe Data on Appspot][]

__I found a bug!__ / *I have another request*

Great, thank you! Please [Report a bug][bug report] - you can also suggest enhancements and raise other issues there.

## Links ##

* [BSData organization homepage][BSData.net]
* [BattleScribe app homepage](https://www.battlescribe.net/)

[BSData.net]: https://www.bsdata.net/
[bug report]: https://github.com/BSData/TemplateDataRepo/issues/new/choose
