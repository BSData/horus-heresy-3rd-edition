import os
import sys
import unittest


# Temp until we have a pip module
print(os.getcwd())

sys.path.insert(1, os.getcwd()+"/BSCopy")
print(sys.path)


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
                self.assertEqual(category_count, 1,
                                 f"There should be 1 category defined on root link {child}, found {category_count}"
                                 )
                if category_count == 1:
                    pass # TODO: Check that it's primary

if __name__ == '__main__':
    unittest.main()