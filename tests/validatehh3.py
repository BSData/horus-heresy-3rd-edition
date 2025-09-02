from unittest.util import _count_diff_all_purpose, _count_diff_hashable

import collections

import os
import sys
import unittest

# Temp until we have a pip module
sys.path.insert(1, os.getcwd() + "/BSCopy")
from BSCopy.system.system import System
from BSCopy.system.node import Node
from BSCopy.system.constants import SystemSettingsKeys, GameImportSpecs
from BSCopy.system.game.heresy3e import Heresy3e
from BSCopy.util.text_utils import read_type_and_subtypes
from BSCopy.book_reader.raw_entry import RawModel

PRIME_ADVANTAGE_SLOTS = ["Rewards of Treachery",
                         "Master of Automata",
                         "Clade Operative",
                         "Legiones Thallaxes",
                         "Recon - Land Raider Explorator Only",
                         ]

LA_PRIME_BENEFIT_SLOT_UPGRADES = {
    "War-engine": [
        "War-engine - Upgraded by The Iron-clad",
    ],
    "Transport": [
        "Transport - Logisticae",
    ],
    "Heavy Transport": [
        "Heavy Transport - Logisticae",
    ],
}

CATS_WITH_NO_PRIMES = [
    "Cults Abominatio.cat",
    "Divisio Assassinorum.cat",
    "Legio Titanicus.cat",
    # KNights have primes but they're special, handled separately
]


class GameTests(unittest.TestCase):

    def setUp(self):
        self.system = System('horus-heresy-3rd-edition',
                             settings={
                                 SystemSettingsKeys.GAME_IMPORT_SPEC: GameImportSpecs.HERESY3E,
                             },
                             )

        self.battlefield_roles_that_can_be_prime = Heresy3e.BATTLEFIELD_ROLES.copy()

        # Warlords aren't ever prime? High command can be in EC.
        self.battlefield_roles_that_can_be_prime.remove("Warlord")
        # Lords of war are only prime in knights, make a separate test for this.
        self.battlefield_roles_that_can_be_prime.remove("Lord of War")
        self.battlefield_roles_that_can_be_prime.remove("Fortification")

    def get_all_unit_ids(self):
        # Get a list of all units that tests may want to share.
        unit_ids = []
        battlefield_roles = Heresy3e.BATTLEFIELD_ROLES.copy()

        for file in self.system.files:
            entry_links_node = file.root_node.get_child(tag='entryLinks')
            if entry_links_node is None:
                continue
            for child in entry_links_node.children:
                category_links = child.get_child(tag='categoryLinks')
                primary_cat = category_links.get_child(tag='categoryLink', attrib={"primary": "true"})
                if primary_cat.target_name in battlefield_roles:
                    unit_ids.append(child.target_id)
        return unit_ids

    def test_root_link_categories(self):
        expected_primaries = Heresy3e.BATTLEFIELD_ROLES.copy()
        expected_primaries += ['Army Configuration'] + PRIME_ADVANTAGE_SLOTS
        for upgraded_slot_list in LA_PRIME_BENEFIT_SLOT_UPGRADES.values():
            expected_primaries += upgraded_slot_list
        expected_secondaries = Heresy3e.FACTIONS.copy()
        for file in self.system.files:
            entry_links_node = file.root_node.get_child(tag='entryLinks')
            if entry_links_node is None:
                continue
            for child in entry_links_node.children:
                with self.subTest(f"Categories on {child}"):
                    category_links = child.get_child(tag='categoryLinks')
                    self.assertIsNotNone(category_links,
                                         f"There should be categories on all root links"
                                         )
                    primary_cat = category_links.get_child(tag='categoryLink', attrib={"primary": "true"})
                    self.assertIsNotNone(primary_cat,
                                         f"There should be a primary category"
                                         )
                    self.assertIn(primary_cat.target_name, expected_primaries,
                                  f"The link's primary category should be a battlefield role or special slot"
                                  )
                    for other_link in category_links.children:
                        if other_link.id == primary_cat.id:
                            continue  # Skip the primary we've already checked.
                        self.assertIn(other_link.target_name, expected_secondaries,
                                      "The other categories may only be faction categories"
                                      )

    def test_forces_all_restrict_primes(self):
        for parent_force in self.system.gst.root_node.get_child("forceEntries").children:
            if parent_force.get_child("forceEntries") is None:
                continue
            for child_force in parent_force.get_child("forceEntries").children:
                if child_force.get_child("categoryLinks") is None:
                    continue

                if child_force.name == "Mech - Logistical Benefits Detachment":
                    continue  # Skip LB detachment forces entirely if Mech LB detachment

                prime_restrictions_in_detachment: [str] = []
                for category_link in child_force.get_child("categoryLinks").children:
                    if category_link.target_name.startswith("Prime "):
                        prime_restrictions_in_detachment.append(category_link.target_name)

                for category_link in child_force.get_child("categoryLinks").children:
                    slot_name = category_link.target_name
                    # First check that for each of the referenced slots, that slot is restricting primes.
                    if not slot_name.startswith("Prime "):
                        # If this is a special version of the slot, get the regular name.
                        slot = slot_name.partition(" - ")[0]
                        if slot not in self.battlefield_roles_that_can_be_prime:
                            continue
                        if slot == "High Command":
                            with self.subTest(f"Does High Command not need a prime restriction in {child_force}"):
                                constraints = category_link.get_child("constraints")
                                self.assertIsNotNone(constraints, "All force org slots should have constraints")
                                max_constraint = constraints.get_child("constraint", {"type": "max"})
                                self.assertIsNotNone(max_constraint, "Should have a max constraint")
                                if max_constraint.attrib["value"] == '0':
                                    continue  # If the max constraint is 0, this is here solely for special assignment

                        with self.subTest(f"Prime restriction on {slot} because of {slot_name} in {child_force}"):
                            self.assertIn("Prime " + slot, prime_restrictions_in_detachment,
                                          f"Expected 'Prime {slot}' because of '{slot_name}'")
                        continue

                    # Then check each prime restriction is set appropriately.
                    with self.subTest(f"{category_link.target_name} on {child_force}"):

                        constraints = category_link.get_child("constraints")
                        self.assertIsNotNone(constraints)
                        self.assertEqual(len(constraints.children), 1,
                                         "Expected exactly one constraint")
                        constraint = constraints.children[0]

                        self.assertIn("includeChildSelections", constraint.attrib.keys())
                        self.assertEqual(constraint.attrib["includeChildSelections"], "true")

    def test_forces_all_hide_if_no_LB(self):
        for parent_force in self.system.gst.root_node.get_child("forceEntries").children:
            # print(parent_force)
            if parent_force.get_child("forceEntries") is None:
                continue
            for child_force in parent_force.get_child("forceEntries").children:
                if child_force.name == "Mech - Logistical Benefits Detachment":
                    continue  # Skip LB detachment forces entirely if Mech LB detachment
                # print("\t", child_force)
                if child_force.get_child("categoryLinks") is None:
                    continue
                for category_link in child_force.get_child("categoryLinks").children:
                    # print("\t", "\t", category_link)
                    if category_link.target_name not in Heresy3e.BATTLEFIELD_ROLES:
                        continue
                    with self.subTest(f"{category_link.target_name} on {child_force}"):
                        constraints = category_link.get_child("constraints")
                        self.assertIsNotNone(constraints, "All force org slots should have constraints")
                        max_constraint = constraints.get_child("constraint", {"type": "max"})
                        self.assertIsNotNone(max_constraint, "All force org slots should have a max constraint")
                        if max_constraint.attrib["value"] != '0':
                            modifiers = category_link.get_child("modifiers")
                            if modifiers is None:
                                continue  # There can be modifiers but there should not be a hidden modifier
                            modify_hidden = modifiers.get_child("modifier",
                                                                {"type": "set", "field": "hidden", "value": "true"})
                            self.assertIsNone(modify_hidden,
                                              "Should not have a modifier for hidden")
                            continue  # Not actually a relevant category link
                        # At this point we have a slot with max 0
                        modifiers = category_link.get_child("modifiers")
                        if modifiers is None and category_link.target_name == "High Command":
                            continue  # High Command can be 0 with mo modifiers, for Special Assignment.
                        self.assertIsNotNone(modifiers, "All force org slots that are max 0 should have modifiers")
                        modify_max_constraint = modifiers.get_child("modifier", {"field": max_constraint.id})
                        self.assertIsNotNone(modify_max_constraint, "Should have a modifier to max")
                        self.check_for_condition_of_lb_slot(modify_max_constraint, category_link.target_name, 1)

                        modify_hidden = modifiers.get_child("modifier",
                                                            {"type": "set", "field": "hidden", "value": "true"})
                        self.check_for_condition_of_lb_slot(modify_hidden, category_link.target_name, 0)

                        self.assertIsNotNone(modify_hidden,
                                             "Should have a modifier for hidden as well as increment max constraint")

    def check_for_condition_of_lb_slot(self, node: Node, slot, expected_qty):
        conditions = node.get_child("conditions")
        self.assertIsNotNone(conditions, "Should have conditions set")
        self.assertEqual(len(conditions.children), 1, "Should have one condition")
        condition = conditions.get_child("condition")
        self.assertEqual(condition.target_name, "LB - " + slot)
        expected_attribs = {
            "type": "equalTo",
            "value": str(expected_qty),
            "field": "selections",
            "scope": "force",
            "shared": "true",
            "includeChildSelections": "true",
        }
        attribs = condition.attrib.copy()
        attribs.pop("childId")  # Ignore child ID since we checked that earlier
        self.assertDictEqual(attribs, expected_attribs)

    def test_all_allied_detachments_linked(self):
        crusade = self.system.get_node_by_id("8562-592c-8d4b-a1f0")
        allied_links = self.system.get_node_by_id("256b-b8a8-017a-75e9").get_child("forceEntryLinks")
        for child_force in crusade.get_child("forceEntries").children:
            # print("\t", child_force)
            with self.subTest(f"{child_force.name} should be linked in the Allied Detachment"):
                self.assertIsNotNone(allied_links.get_child("forceEntryLink", attrib={"targetId": child_force.id}))

    def test_all_max_0_detachments_have_a_hide(self):
        crusade = self.system.get_node_by_id("8562-592c-8d4b-a1f0")
        for child_force in crusade.get_child("forceEntries").children:
            # print("\t", child_force)
            if not child_force.name.startswith("Auxiliary - "):
                continue
            with self.subTest(f"{child_force.name} should be linked in the Allied Detachment"):
                self.assertIsNotNone(allied_links.get_child("forceEntryLink", attrib={"targetId": child_force.id}))

    def test_all_units_have_prime(self):
        # First, get all units
        unit_ids = []
        for file in self.system.files:
            if file.name in CATS_WITH_NO_PRIMES:
                continue
            entry_links_node = file.root_node.get_child(tag='entryLinks')
            if entry_links_node is None:
                continue
            for child in entry_links_node.children:
                category_links = child.get_child(tag='categoryLinks')
                primary_cat = category_links.get_child(tag='categoryLink', attrib={"primary": "true"})
                if file.name == "Questoris Familia.cat":
                    if primary_cat.target_name == "Lord of War":
                        unit_ids.append(child.target_id)
                elif primary_cat.target_name == "High Command":
                    # Only include high command if it's generic astartes or EC, due to the EC detachment.
                    if file.name in ["Legiones Astartes.cat", "Emperor's Children.cat"]:
                        unit_ids.append(child.target_id)
                elif primary_cat.target_name in self.battlefield_roles_that_can_be_prime:
                    unit_ids.append(child.target_id)

        for unit_id in unit_ids:
            unit: Node = self.system.get_node_by_id(unit_id)
            prime_selector_id = Heresy3e().get_prime_selector(unit.system_file.faction)
            with self.subTest(f"{unit} should have a link to 'Prime Unit'"):
                entry_links = unit.get_child("entryLinks")
                self.assertIsNotNone(entry_links, "Should have entry links")
                prime_link = entry_links.get_child(tag='entryLink',
                                                   attrib={'targetId': '3fa2-78b1-637f-7fb2'})  # Prime Unit ID
                self.assertIsNotNone(prime_link)
                with self.subTest(f"Benefits on {prime_link}"):
                    prime_options_total = 0

                    prime_benefit_links = prime_link.get_child("entryLinks")
                    if prime_benefit_links is not None:
                        prime_options_total += len(prime_benefit_links.children)
                        if prime_selector_id:
                            faction_benefits_list = prime_benefit_links.get_child(tag='entryLink',
                                                                                  attrib={
                                                                                      'targetId': prime_selector_id
                                                                                  })
                            if faction_benefits_list is None:  # Not a full error at this time
                                print(f"Not linking the expected benefits: {prime_link}")

                    prime_benefit_entries = prime_link.get_child("selectionEntries")
                    if prime_benefit_entries is not None:
                        pass  # Uncomment the next line iff we find a unit
                        #  that can only have one prime trait ever and that prime trait is unique to itself
                        # prime_options_total += len(prime_benefit_entries.children)
                        # Could have a unique prime that must be chosen?

                    self.assertGreaterEqual(prime_options_total, 1, "There should be at least one prime option")

    def test_prime_benefit_modifiers(self):
        self.maxDiff = None
        unit_ids = []
        for file in self.system.files:
            # While questoris can have primes, they can't have any of these.
            if file.name in CATS_WITH_NO_PRIMES + ["Questoris Familia.cat"]:
                continue
            entry_links_node = file.root_node.get_child(tag='entryLinks')
            if entry_links_node is None:
                continue
            for child in entry_links_node.children:
                category_links = child.get_child(tag='categoryLinks')
                primary_cat = category_links.get_child(tag='categoryLink', attrib={"primary": "true"})
                if primary_cat.target_name == "High Command":
                    # Only include high command if it's generic astartes or EC, due to the EC detachment.
                    if file.name in ["Legiones Astartes.cat", "Emperor's Children.cat"]:
                        unit_ids.append(child.target_id)
                elif primary_cat.target_name in self.battlefield_roles_that_can_be_prime:
                    unit_ids.append(child.target_id)

        for unit_id in unit_ids:
            unit: Node = self.system.get_node_by_id(unit_id)
            for profile in unit.get_descendants_with(lambda x: x.type == "profile:Profile"):
                # print(profile)
                profile_type = profile.get_profile_dict()["Type"]
                if "Unique" in profile_type:
                    continue
                with self.subTest(f"Prime modifiers for {profile}"):
                    mod_groups = profile.get_child("modifierGroups")
                    self.assertIsNotNone(mod_groups, "Expected modifiers for prime benefits")
                    combat_veterans_group = None
                    paragon_of_battle_group = None
                    master_sgt_group = None
                    for mod_group in mod_groups.children:
                        if mod_group.does_descendent_exist(lambda x: x.text == "Combat Veterans"):
                            combat_veterans_group = mod_group
                        if mod_group.does_descendent_exist(lambda x: x.text == "Paragon of Battle"):
                            paragon_of_battle_group = mod_group
                        if mod_group.does_descendent_exist(lambda x: x.text == "Master Sergeant"):
                            master_sgt_group = mod_group
                        elif mod_group.does_descendent_exist(lambda x: x.text == "Master Sergeant - Existing Champion"):
                            master_sgt_group = mod_group

                    with self.subTest(f"Combat Veterans for {profile}"):
                        self.check_mods_and_conditions(combat_veterans_group, expected_mods=[
                            {"type": "increment", "value": "1", "field": "02ad-ebe6-86e7-9fd6"},
                            {"type": "increment", "value": "1", "field": "9cd1-0e7c-2cd6-5f2f"},
                            {"type": "increment", "value": "1", "field": "f714-1726-37d3-44df"},
                            {"type": "increment", "value": "1", "field": "29c5-925d-5b1d-1e77"},
                            {"type": "ceil", "value": "10", "field": "02ad-ebe6-86e7-9fd6"},
                            {"type": "ceil", "value": "10", "field": "9cd1-0e7c-2cd6-5f2f"},
                            {"type": "ceil", "value": "10", "field": "f714-1726-37d3-44df"},
                            {"type": "ceil", "value": "10", "field": "29c5-925d-5b1d-1e77"},
                        ], expected_condition_child_id="8cf8-9be5-91d6-c96d")

                    if "Command" in profile_type:
                        with self.subTest(f"Paragon of Battle for {profile}"):
                            self.check_mods_and_conditions(paragon_of_battle_group, expected_mods=[
                                {"type": "increment", "value": "1", "field": "253c-d694-4695-c89e"},
                                {"type": "increment", "value": "1", "field": "0cd5-b269-e3bc-028b"},
                                {"type": "increment", "value": "1", "field": "024e-bdb1-7982-25a0"},
                            ], expected_condition_child_id="20cb-4eec-0844-8a97")

                    if "Sergeant" in profile_type and "Rapier" not in unit.name:
                        with self.subTest(f"Master Sergeant for {profile}"):
                            self.assertIsNotNone(master_sgt_group)
                            if "Champion" in profile_type:
                                self.assertTrue(master_sgt_group.does_descendent_exist(
                                    lambda x: x.text == "Master Sergeant - Existing Champion"),
                                    "Should have 'Master Sergeant - Existing Champion'")
                                self.assertFalse(master_sgt_group.does_descendent_exist(
                                    lambda x: x.text == "Master Sergeant"),
                                    "Should have 'Master Sergeant - Existing Champion' instead of 'Master Sergeant'")
                                self.check_mods_and_conditions(master_sgt_group, expected_mods=[
                                    {"type": "increment", "value": "1", "field": "253c-d694-4695-c89e"},
                                    {"type": "increment", "value": "1", "field": "024e-bdb1-7982-25a0"},
                                    {"type": "increment", "value": "2", "field": "02ad-ebe6-86e7-9fd6"},
                                ], expected_condition_child_id="2c90-1d52-7075-59d3")
                            else:
                                self.assertTrue(master_sgt_group.does_descendent_exist(
                                    lambda x: x.text == "Master Sergeant"),
                                    "Should have 'Master Sergeant'")
                                self.assertFalse(master_sgt_group.does_descendent_exist(
                                    lambda x: x.text == "Master Sergeant - Existing Champion"),
                                    "Should have 'Master Sergeant' instead of 'Master Sergeant - Existing Champion'")
                                self.check_mods_and_conditions(master_sgt_group, expected_mods=[
                                    {"type": "increment", "value": "1", "field": "253c-d694-4695-c89e"},
                                    {"type": "increment", "value": "1", "field": "024e-bdb1-7982-25a0"},
                                    {"type": "increment", "value": "1", "field": "02ad-ebe6-86e7-9fd6"},
                                    {"type": "replace", "value": "Sergeant, Champion",
                                     "field": "50fc-9241-d4a2-045b", "arg": "Sergeant"},

                                ], expected_condition_child_id="2c90-1d52-7075-59d3")

    def check_mods_and_conditions(self, mod_group, expected_mods, expected_condition_child_id):
        self.assertIsNotNone(mod_group)

        self.assertEqual(mod_group.type, "modifierGroup:and")
        actual_mods = []
        for mod in mod_group.get_child("modifiers").children:
            actual_mods.append(mod.attrib)

        self.assertCountEqual(actual_mods, expected_mods)
        actual_conditions = []
        for condition in mod_group.get_child("conditions").children:
            attrib = condition.attrib.copy()
            if "includeChildForces" not in attrib.keys():
                attrib["includeChildForces"] = "false"
            actual_conditions.append(attrib)
        expected_conditions = [{
            "type": "atLeast",
            "value": "1",
            "field": "selections",
            "scope": "parent",
            "childId": expected_condition_child_id,
            "shared": "true",
            "includeChildForces": "false",
            "includeChildSelections": "true"
        }]
        self.assertCountEqual(actual_conditions, expected_conditions)

    def test_all_high_command_have_detachment_choice(self):
        high_command_id = self.system.categories["High Command"].id
        for category_link in self.system.all_nodes.filter(lambda x: x.target_id == high_command_id):
            # print(category_link.parent.parent)
            unit_link = category_link.parent.parent
            if not unit_link.is_link():
                continue  # Skip over things that aren't unit links.
            unit = unit_link.target
            with self.subTest(f"{unit} should have a link to 'High Command Detachment Choice'"):
                entry_links = unit.get_child("entryLinks")
                self.assertIsNotNone(entry_links, "Should have entry links")
                high_command_detachment_choice_link = entry_links.get_child(tag='entryLink',
                                                                            attrib={
                                                                                'targetId': '969e-8b5b-1410-cfc6'})
                self.assertIsNotNone(high_command_detachment_choice_link,
                                     "Should have a link to 'High Command Detachment Choice'")

    def test_all_units_are_units(self):
        total_model_count = 0
        for unit_id in self.get_all_unit_ids():
            unit = self.system.get_node_by_id(unit_id)
            with self.subTest(f"{unit} should be of type 'unit'"):
                self.assertEqual(unit.attrib["type"], "unit")
            with self.subTest(f"{unit} should contain models"):
                entries = unit.get_child("selectionEntries")
                self.assertIsNotNone(entries, "Should have entries")
                model_count = 0
                for potential_model in entries.children:
                    if potential_model.attrib.get("subType") == "unit-group":  # Rapier type unit
                        for potential_sub_model in potential_model.get_child("selectionEntries").children:
                            if not potential_sub_model.attrib["type"] == "model":
                                continue
                            model_count += 1
                            total_model_count += 1
                            with self.subTest(f"{potential_sub_model} should have a profile"):
                                self.assertIsNotNone(potential_sub_model.get_profile_node(None),
                                                     f"There should be a profile on {potential_sub_model}")

                    if not potential_model.attrib["type"] == "model":
                        continue
                    model_count += 1
                    total_model_count += 1
                    with self.subTest(f"{potential_model} should have a profile"):
                        self.assertIsNotNone(potential_model.get_profile_node(None),
                                             f"There should be a profile on {potential_model}")
                self.assertGreaterEqual(model_count, 1, "There should be at least one model in the unit")
        print(f"There are {len(self.get_all_unit_ids())} Units, containing {total_model_count} models")

    def test_categories_match_type_line(self):
        system = self.system
        for model_node in system.nodes_with_ids.filter(lambda x: x.type == "selectionEntry:model"):
            with self.subTest(f"Types and Subtypes for {model_node}"):
                profile_node = model_node.get_profile_node()
                self.assertIsNotNone(profile_node, f"Profile should be set on {model_node}")
                profile_dict = profile_node.get_profile_dict()
                unit_type_text = profile_dict.get("Type")
                self.assertIsNotNone(unit_type_text, f"'Type' attribute should be set on {profile_node}")
                type_and_subtypes = read_type_and_subtypes(unit_type_text)
                raw_model = RawModel(None, model_node.name, None, None, None)
                raw_model.type_and_subtypes = type_and_subtypes
                errors = model_node.check_types_and_subtypes(raw_model)
                self.assertEqual(len(errors), 0, f"{errors} on {model_node}")

    def test_specific_upgrade_slots_LA(self):
        system_file = next(filter(lambda sf: sf.name == "Legiones Astartes.cat", self.system.files), None)
        slots_and_upgrades = LA_PRIME_BENEFIT_SLOT_UPGRADES
        # First sort all the units in the cat by slot
        entry_links_node = system_file.root_node.get_child(tag='entryLinks')
        units_by_slot = {}
        for child in entry_links_node.children:
            category_links = child.get_child(tag='categoryLinks')
            primary_cat = category_links.get_child(tag='categoryLink', attrib={"primary": "true"})
            if primary_cat is None:
                continue  # This will be caught by other tests
            slot = primary_cat.target_name
            if slot not in units_by_slot.keys():
                units_by_slot[slot] = {}
            units_by_slot[slot][child.target_id] = child.target_name

        # Then tests
        for base_slot in slots_and_upgrades.keys():
            for upgrade_slot in slots_and_upgrades[base_slot]:
                with self.subTest(f"All {base_slot} units have a second link for {upgrade_slot}"):
                    for unit_id, name in units_by_slot[base_slot].items():
                        self.assertIsNotNone(units_by_slot[upgrade_slot].get(unit_id),
                                             f"{name} should have a second link with primary category {upgrade_slot}")

    def test_model_types_not_on_non_models(self):
        for type_category in self.system.model_types_and_subtypes.values():
            with self.subTest(f"links to {type_category} should be of on SEs of type 'model'"):
                for type_link in self.system.nodes_with_ids.filter(lambda x: x.target_id == type_category.id):
                    se = type_link.parent.parent
                    with self.subTest(f"link on {se} means it is a model"):
                        self.assertEqual(se.type, "selectionEntry:model",
                                         f"{type_category.name} should not be linked on {se}")

    def test_unique_models_are_max_1(self):
        expected_attribs = {
            "type": "max",
            "value": "1",
            "field": "selections",
            "scope": "roster",
            "shared": "true",
            "includeChildSelections": "true",
            "includeChildForces": "true",
        }
        for unique_type_link in self.system.nodes_with_ids.filter(lambda x:
                                                                  x.tag == "categoryLink"
                                                                  and x.target_name == "Unique Model Sub-Type"
                                                                  ):
            unit = unique_type_link.find_ancestor_with(lambda x: x.type == "selectionEntry:unit")
            if unit is None:
                continue
            with self.subTest(f"max 1 on unique unit {unit}"):
                constraints = unit.get_child("constraints")
                self.assertIsNotNone(constraints, "Unique units should have constraints")
                if len(constraints.children) == 1:
                    max_constraint = constraints.get_child("constraint", {"type": "max"})
                    self.assertIsNotNone(max_constraint, "Unique units should have max constraint")

                    attribs = max_constraint.attrib.copy()
                    attribs.pop("id")  # Ignore id
                    self.assertCountEqual(attribs, expected_attribs, "Max constraint properties")
                    continue
                else:  # Multiple options which could be the max.
                    found = False
                    for constraint in constraints.children:
                        attribs = constraint.attrib.copy()
                        attribs.pop("id")  # Ignore id

                        if Node.are_attribs_equal(attribs, expected_attribs):
                            found = True
                            break
                    self.assertTrue(found, f"A constraint matching {expected_attribs}")


if __name__ == '__main__':
    unittest.main()
