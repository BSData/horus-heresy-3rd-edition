import os
import sys
import unittest

# Temp until we have a pip module
sys.path.insert(1, os.getcwd() + "/BSCopy")
from BSCopy.system.system import System
from BSCopy.system.constants import SystemSettingsKeys, GameImportSpecs
from BSCopy.system.game.heresy3e import Heresy3e


class GameTests(unittest.TestCase):

    def setUp(self):
        self.system = System('horus-heresy-3rd-edition',
                             settings={
                                 SystemSettingsKeys.GAME_IMPORT_SPEC: GameImportSpecs.HERESY3E,
                             },
                             )

    def test_root_link_categories(self):
        expected_primaries = Heresy3e.BATTLEFIELD_ROLES.copy()
        expected_primaries += ['Army Configuration', 'Rewards of Treachery']
        expected_secondaries = Heresy3e.FACTIONS.copy()
        for file in self.system.files:
            entry_links_node = file.root_node.get_child(tag='entryLinks')
            if entry_links_node is None:
                continue
            for child in entry_links_node.children:
                with self.subTest(f"Root link {child}'s primary category should be a battlefield role"):
                    category_links = child.get_child(tag='categoryLinks')
                    primary_cat = category_links.get_child(tag='categoryLink', attrib={"primary": "true"})
                    self.assertIsNotNone(primary_cat,
                                         f"There should be a primary category"
                                         )
                    self.assertIn(primary_cat.target_name, expected_primaries,
                                  f"(The link's primary category) is a battlefield role: "
                                  )
                    for other_link in category_links.children:
                        if other_link.id == primary_cat.id:
                            continue  # Skip the primary we've already checked.
                        self.assertIn(other_link.target_name, expected_secondaries,
                                      f"(The link's primary category) is a faction: "
                                      )

    def test_forces_all_restrict_primes(self):
        for parent_force in self.system.gst.root_node.get_child("forceEntries").children:
            print(parent_force)
            if parent_force.get_child("forceEntries") is None:
                continue
            for child_force in parent_force.get_child("forceEntries").children:
                print("\t", child_force)
                if child_force.get_child("categoryLinks") is None:
                    continue
                for category_link in child_force.get_child("categoryLinks").children:
                    print("\t", "\t", category_link)
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
            print("\t", child_force)
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

        # First, get all units
        unit_ids = []
        for file in self.system.files:
            entry_links_node = file.root_node.get_child(tag='entryLinks')
            if entry_links_node is None:
                continue
            for child in entry_links_node.children:
                category_links = child.get_child(tag='categoryLinks')
                primary_cat = category_links.get_child(tag='categoryLink', attrib={"primary": "true"})
                if primary_cat.target_name in battlefield_roles:
                    unit_ids.append(child.target_id)
        for unit_id in unit_ids:
            unit = self.system.get_node_by_id(unit_id)
            with self.subTest(f"{unit} should have a link to 'Prime Unit'"):
                entry_links = unit.get_child("entryLinks")
                self.assertIsNotNone(entry_links, "Should have entry links")
                prime_link = entry_links.get_child(tag='entryLink',
                                                   attrib={'targetId': '3fa2-78b1-637f-7fb2'})  # Prime Unit ID
                self.assertIsNotNone(prime_link)


if __name__ == '__main__':
    unittest.main()
