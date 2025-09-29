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
- If the book does not capitalise something, eg "Any model may exchange their *bolter*..." then it does not need to be capitalised unless it is the first word in a string/sentence/label.

# 3: Making Units
All Units must be made as shared selection entries with the Unit type
Each Unit must have am SSE with the Model type within it - this must have a constraint with the minimum and maximum model count for that unit.
Add the relevant Profile within the Model
Select the relevant Model Type and Sub-Type category check boxes against the Model entry.
Any Weapons/Wargear/Other SSE's must be paced within the Model entry - NOT the Unit entry 

Then for each unit create a link in the Root Selection Entries to the shared selection entry.
For the legions, they import the root selection entries from the LA cat. 
DO NOT set an order (Position) number against a root entry unless there is a specific reason to do so (e.g. Alpha Legion Rewards of Treachery units are sorted by legion number, LA duplicate units for specific upgrades for existing units , e.g. Logisticae) - this makes sure all units are listed alphabetically and remains a consistent and well understood way of searching for unit names in long lists (e.g. LA command choices) and the legion specific units get placed within the list in the right places automatically.

## 3.1: Default Inclusions on Units

Each link in the root selection entries must have the battlefield role selected as the Primary category. :robot: Checked by the unit tests

### Prime Checkbox and Benefits
All units must include a link to the GST's "Prime Unit" selection entry at the Unit level (not the Model level). :robot: Checked by the unit tests

Inside that link, you should link to your faction's list of "Prime Benefits" selection entry group. :robot: Checked by the unit tests

Models  need to include the Characteristic modifications for Prime Benefits that mod them (Copy from existing unit profile where applicable)
- For Models with the Command Sub-Type - Paragon of Battle - Increment WS, BS & A by 1 if Parent contains Paragon of Battle 
- For all Units that use the standard Profile, but are not Unique - add the Combat Veterans Modifier Group to the profile (copy it from another unit)
- For Models with the Sergeant Sub-Type ensure that the Master Sergeant Modification group is copied from an existing Sergeant Model - if the Model also has the Champion Sub-Type remove the Type replace line and change the LD mofifier to +2

###  Astartes Units
All Astartes units should have the following Traits at the root level of the unit (Add Link -> Profile -> Search for them):
- \[Allegiance]
- \[Legiones Astartes]

The legion specific units should not have the legion trait category set on the shared selection entry, 
and instead it should be set on the link. This is so alpha legion can import them without this trait. :robot: These are the only traits allowed other than the battlefield roles by the unit tests.

Any Astartes Unit or Model that has a Chainsword by default and can swap that for an entry in the Legion Sergeant Melee List must be given the 'Default Chainsword' category

### Mechanicum Units
All Mechanicum units should have the following Traits at the root level of the unit (Add Link -> Profile -> Search for them):
- \[Allegiance]
### Solar Auxilia Units
All Auxilia units should have the following Traits at the root level of the unit (Add Link -> Profile -> Search for them):
- \[Allegiance]
-  Solar Auxilia
### Questoris Household Units
All Auxilia units should have the following Traits at the root level of the unit (Add Link -> Profile -> Search for them):
- \[Allegiance]

# 4: Forces
## 4.1: Location
Auxiliary and Apex detachments belong in the GST, specifically as children of the crusade chart. 
The allied detachment can then link all the auxiliary detachments. 
Force Links requires New Recruit Editor 1.3.19 or higher.
There are some exceptional detachments which could be in other places, 
namely the emperor's children one that replaces the warlord detachment.
## 4.2: Sorting by blocks
We're using the sort order to vaguely make it easier to find the detachments in the data files.
Starting at each number is a block of entries
- 1 Core rulebook
- 13-21 are mechanicum (consider moving in order)
- 30 Solar Aux
- 40 Marine Generic
- 50 Liber Astartes
- 70 Liber Hereticus

## 4.3: Hiding
Child detachments which need to be hidden in any one catalogue should be set hidden as default and 
then unhidden in any force that can take it.
We then set a "set hidden false" constraint with the appropriate "primary catalogue and force" constraint, 
as well as any other factors (such as the presence of a character)

## 4.4: Prime restrictions
When adding what categories are allowed in a detachment, first check if there are any primes. 
If so, keep in mind that logistical benefit adds a slot of (nearly) any type, and for that you'll need
a set 0 primes of that slot type. It's simplest to just copy the example detachment and adjust min-max in that.

## 4.5: Restricting a slot to a particular entry.
Make a category called "Slot name - Whatever thing only" 
Add a modifier on that unit to "set primary category if ancestor is name of force"
Replace whatever category in your copy of the template with your new category. 
Be sure to copy over the logistical benefit addition to your restricted category as the slot is still restricted.

On the unit place a modifier of setting the primary category based on the force. Note a bug in 
the editor may change "force" to "roster" when you click into the constraint if you use instance of force in force. 
Instead, instance of selection in ancestor works. 
```json
{
  "parentKey": "modifiers",
  "conditions": [
    {
      "type": "instanceOf",
      "value": 1,
      "field": "selections",
      "scope": "ancestor",
      "childId": "9bfb-c160-31df-9108",
      "shared": true,
      "includeChildSelections": false,
      "includeChildForces": false
    }
  ],
  "type": "set-primary",
  "value": "4a48-9154-40d8-d6b7",
  "field": "category"
}
```

If instead that slot is "may not be used to take" (ex reaping host from death guard) simply set a hide modifier 
on the appropriate unit
---

## 4.6 Add a slot that gains a benefit advantage.
For example, "The Iron-clad" in LA or "Clade Operative" assassins.
* Create a new category for this slot. Ideal naming convention "Slot name - Upgraded by Prime Benefit"
* Add this new category to every relevant detachment (any detachment with primes). :robot: TODO: Check with tests
* Create a new root entry link linking to that unit, with your new category as the primary (and only) category
* * Or, use an "add primary category, remove category" modifier. 
* * Not listing the original category is useful because this unit should not be able to select a prime.
* Set modifiers on the unit to apply the upgrades.
* Set the prime option to hidden on the unit if the ancestor is this type of slot.


Whenever you do this, you will need to update the tests. Update the lists at the top of validatehh3.py for test_root_link_categories 
and add your new category to the appropriate list, with the name matching exactly.
```python

PRIME_ADVANTAGE_SLOTS = ["Rewards of Treachery",
                         "Master of Automata",
                         "Clade Operative",
                         ]

LA_PRIME_BENEFIT_SLOT_UPGRADES = {
    "Battlefield role": [
        "New Version"
    ],
    "Transport": [
        "Transport - Logisticae"
    ],
    "Heavy Transport": [
        "Heavy Transport - Logisticae"
    ],
}
```




[BSData.net]: https://www.bsdata.net/
[bug report]: https://github.com/BSData/TemplateDataRepo/issues/new/choose
