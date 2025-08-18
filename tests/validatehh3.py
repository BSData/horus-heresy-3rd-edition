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


class GameTests(unittest.TestCase):

    def setUp(self):
        self.system = System('horus-heresy-3rd-edition',
                             settings={
                                 SystemSettingsKeys.GAME_IMPORT_SPEC: GameImportSpecs.HERESY3E,
                             },
                             )

        # Get a list of all units that tests may want to share.
        self.unit_ids = []
        battlefield_roles = Heresy3e.BATTLEFIELD_ROLES.copy()

        for file in self.system.files:
            entry_links_node = file.root_node.get_child(tag='entryLinks')
            if entry_links_node is None:
                continue
            for child in entry_links_node.children:
                category_links = child.get_child(tag='categoryLinks')
                primary_cat = category_links.get_child(tag='categoryLink', attrib={"primary": "true"})
                if primary_cat.target_name in battlefield_roles:
                    self.unit_ids.append(child.target_id)

    def test_root_link_categories(self):
        expected_primaries = Heresy3e.BATTLEFIELD_ROLES.copy()
        expected_primaries += ['Army Configuration', 'Rewards of Treachery', "Master of Automata",
                               "Clade Operative", "War-engine - Upgraded by The Iron-clad",
                               ]
        expected_secondaries = Heresy3e.FACTIONS.copy()
        for file in self.system.files:
            entry_links_node = file.root_node.get_child(tag='entryLinks')
            if entry_links_node is None:
                continue
            for child in entry_links_node.children:
                with self.subTest(f"Categories on {child}"):
                    category_links = child.get_child(tag='categoryLinks')
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
            # print(parent_force)
            if parent_force.get_child("forceEntries") is None:
                continue
            for child_force in parent_force.get_child("forceEntries").children:
                # print("\t", child_force)
                if child_force.get_child("categoryLinks") is None:
                    continue
                for category_link in child_force.get_child("categoryLinks").children:
                    # print("\t", "\t", category_link)
                    if not category_link.target_name.startswith("Prime "):
                        continue
                    with self.subTest(f"{category_link.target_name} on {child_force}"):

                        constraints = category_link.get_child("constraints")
                        self.assertIsNotNone(constraints)
                        self.assertEqual(len(constraints.children), 1,
                                         "Expected exactly one constraint")
                        constraint = constraints.children[0]

                        self.assertIn("includeChildSelections", constraint.attrib.keys())

    def test_all_allied_detachments_linked(self):
        crusade = self.system.get_node_by_id("8562-592c-8d4b-a1f0")
        allied_links = self.system.get_node_by_id("256b-b8a8-017a-75e9").get_child("forceEntryLinks")
        for child_force in crusade.get_child("forceEntries").children:
            # print("\t", child_force)
            if not child_force.name.startswith("Auxiliary - "):
                continue
            with self.subTest(f"{child_force.name} should be linked in the Allied Detachment"):
                self.assertIsNotNone(allied_links.get_child("forceEntryLink", attrib={"targetId": child_force.id}))

    def test_all_units_have_prime(self):
        battlefield_roles = Heresy3e.BATTLEFIELD_ROLES.copy()

        # Warlords aren't ever prime? High command can be in EC.
        battlefield_roles.remove("Warlord")
        # Lords of war are only prime in knights, make a separate test for this.
        battlefield_roles.remove("Lord of War")
        battlefield_roles.remove("Fortification")

        # First, get all units
        unit_ids = []
        for file in self.system.files:
            entry_links_node = file.root_node.get_child(tag='entryLinks')
            if entry_links_node is None:
                continue
            for child in entry_links_node.children:
                category_links = child.get_child(tag='categoryLinks')
                primary_cat = category_links.get_child(tag='categoryLink', attrib={"primary": "true"})
                if file.name == "Questoris Household.cat":
                    if primary_cat.target_name == "Lord of War":
                        unit_ids.append(child.target_id)
                elif primary_cat.target_name in battlefield_roles:
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

    def test_all_units_are_units(self):
        total_model_count = 0
        for unit_id in self.unit_ids:
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
        print(f"There are {len(self.unit_ids)} Units, containing {total_model_count} models")

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


if __name__ == '__main__':
    unittest.main()
