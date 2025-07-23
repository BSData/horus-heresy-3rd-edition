Horus Heresy 3rd Edition
==================

[![Open bugs](https://img.shields.io/github/issues/BSData/horus-heresy-3rd-edition/bug.svg?style=flat-square&label=bugs)](https://github.com/BSData/horus-heresy-3rd-edition/issues?q=is%3Aissue+is%3Aopen+label%3Abug)
[![Contributors](https://img.shields.io/github/contributors/BSData/horus-heresy-3rd-edition.svg?style=flat-square)](https://github.com/BSData/horus-heresy-3rd-edition/graphs/contributors)
[![Commit activity the past year](https://img.shields.io/github/commit-activity/y/BSData/horus-heresy-3rd-edition.svg?style=flat-square)](https://github.com/BSData/horus-heresy-3rd-edition/pulse/monthly)
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

# 2: Stylistic Choices
## 2.1 Options within SSEGs
Options within SSEGs should always be ordered in the same order they appear in any official publication
## 2.2 Options alongside SSGEs
If a unit has an option alongside an SSEG, eg "May take a Volkite Charger or an item from the Legion Combi-weapons List" then non-SSEG items must always appear first in the group, above SSEGs, sorted by pts value in ascending order
## 2.3 Capitalisation
Copy what is printed in the books.
- If the book has something as Upper Upper, eg "Legion Officer Wargear" then capitalise every word.
- If the book does not capitalise something, eg "Any model may exchange their *bolter*..." then it does not need to be capitalised unless it is the first owrd in a string/sentence/label.

# 3: Default Inclusions on Units
## 3.1: Astartes Units
All Astartes units should have the following Traits at the root level of the unit (Add Link -> Profile -> Search for them):
- \[Allegiance]
- \[Legiones Astartes]
## Mechanicum Units
All Mechanicum units should have the following Traits at the root level of the unit (Add Link -> Profile -> Search for them):
- \[Allegiance]
## Solar Auxilia Units
All Auxilia units should have the following Traits at the root level of the unit (Add Link -> Profile -> Search for them):
- \[Allegiance]
-  Solar Auxilia
## Questoris Household Units
All Auxilia units should have the following Traits at the root level of the unit (Add Link -> Profile -> Search for them):
- \[Allegiance]
---

[BSData.net]: https://www.bsdata.net/
[bug report]: https://github.com/BSData/TemplateDataRepo/issues/new/choose
