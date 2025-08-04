import os
import sys
import os

# Temp until we have a pip module
print(os.getcwd())
print(sys.path)

sys.path.insert(1, "BSCopy")
print(sys.path)


from BSCopy.system.system import System



if __name__ == '__main__':

    system = System('horus-heresy-3rd-edition',
                    settings={
                        # SystemSettingsKeys.GAME_IMPORT_SPEC: GameImportSpecs.HERESY3E,
                    },
                    )
    for file in system.files:
        entry_links_node = file.root_node.get_child(tag='entryLinks')
        if entry_links_node is None:
            continue
        for child in entry_links_node.children:
            category_count = len(child.get_categories())
            if category_count != 1:
                print(f"{child} has {category_count} categories, only 1 is expected")

