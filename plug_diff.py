import re
from pprint import pprint
from typing import Set


def get_all_plug(fname: str, regex: re.Pattern, line_filter: str) -> Set[str]:
    with open(fname) as fp:
        lines = [
            line for line in fp if line_filter in line and not line.startswith('"')
        ]

    plug_list = ["".join(regex.findall(line)) for line in lines]
    return set(plug_list)


def main():
    old_fname = "/Users/hackrole/hr-conf/hr-nvim-conf/dein_init.vim.bak"
    old_regex = re.compile(r'dein#add\([\'"](.+)?[\'"]')
    old_filter = "dein#add"
    old_set = get_all_plug(old_fname, old_regex, old_filter)

    new_fname = "/Users/hackrole/hr-conf/hr-nvim-conf/init.vim"
    new_regex = re.compile(r"Plug\ \'(.+)?\'")
    new_filter = "Plug"
    new_set = get_all_plug(new_fname, new_regex, new_filter)

    pprint(old_set - new_set)
    pprint(new_set - old_set)
    return old_set - new_set


if __name__ == "__main__":
    main()
