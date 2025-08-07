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

    if __name__ == '__main__':
        unittest.main()
