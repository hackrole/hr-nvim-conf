from homely.files import symlink, mkdir
from homely.install import installpkg

# install neovim
installpkg()

# symlink config
symlink('', "~/.config/nvim")
