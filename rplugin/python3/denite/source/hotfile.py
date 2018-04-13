# ============================================================================
# FILE: hotfile.py
# AUTHOR: hackrole<daipeng123456@gmail.com>
# License: MIT license
# ============================================================================
# pylint: disable=import-error,missing-docstring,no-name-in-module
# pylint: disable=missing-super-argument,unused-argument

from pathlib import Path
from .base import Base


BASE_DIR = (Path(__file__) / "../../../../..").resolve()
HOT_FILES = [
    "init.vim",
    "config/plugin.vim",
    "config/hr_global_settings.vim",
    "config/hr_keymap.vim",
    "config/hr_command.vim",
    "autoload/hr_misc.vim",
]


def gather_hotfiles():
    results = {}
    for file_path in HOT_FILES:
        path = (BASE_DIR / file_path).resolve()
        name = path.name
        results[name] = str(path)
    # append new files
    results['i3-config'] = "~/.i3/config"
    results['tmux.conf'] = "~/.tmux.conf"

    return results


class Source(Base):

    def __init__(self, vim):
        super().__init__(vim)

        self.name = "hotfile"
        self.kind = "kind"
        self.matchers = ['matcher_fuzzy']
        self.file_list = {}

    def on_init(self, context):
        self.file_list.update(gather_hotfiles())

    def gather_candidates(self, context):
        results = []
        for name, path in self.file_list.items():
            results.append({
                'word': name,
                'kind': 'file',
                'action__path': path,
            })

        return results
