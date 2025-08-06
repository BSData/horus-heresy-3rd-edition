import os
import sys
import unittest

# Temp until we have a pip module
sys.path.insert(1, os.getcwd() + "/BSCopy")
from BSCopy.system.system import System


class GameTests(unittest.TestCase):

    def setUp(self):
        self.system = System('horus-heresy-3rd-edition',
                             settings={
                                 # SystemSettingsKeys.GAME_IMPORT_SPEC: GameImportSpecs.HERESY3E,
                             },
                             )

    def test_all_root_links_1_category(self):
        for file in self.system.files:
            entry_links_node = file.root_node.get_child(tag='entryLinks')
            if entry_links_node is None:
                continue
            for child in entry_links_node.children:
                category_count = len(child.get_categories())
                with self.subTest(f"There should be 1 category defined on root link {child}"):
                    self.assertEqual(category_count, 1,
                                     f"Found {category_count}"
                                     )
                if category_count == 1:
                    link = child.get_child(tag='categoryLink')
                    pass  # TODO: Check that it's primary


if __name__ == '__main__':
    unittest.main()
