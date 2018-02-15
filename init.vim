"------------------------------------------------------------------
" [dein.vim config] {{{1
"------------------------------------------------------------------
set nocompatible
be mswin
filetype off
if has('gui_macvim')
    set macmeta
endif

" project dir
let $HR_NVIM_DIR = fnamemodify(expand('<sfile>'), ':p:h')

" path to dein.vim
let g:hk_dein_path = expand("~/.config/nvim/dein/repos/github.com/Shougo/dein.vim")
" path to plugins root path
let g:hk_dein_plugin_path = expand("~/.config/nvim/dein")
" add dein.vim to vimruntimepath
execute "set runtimepath+=" . g:hk_dein_path

if dein#load_state(g:hk_dein_plugin_path)
    call dein#begin(g:hk_dein_plugin_path)
    call dein#add('Shougo/dein.vim')
    "call dein#add('Shougo/vimproc.vim', {
    "            \ 'build': {
    "            \   'windows': 'tools\\update-dll-mingw',
    "            \   'cygwin': 'make -f make_cygwin.mak',
    "            \   'mac': 'make -f make_mac.mak',
    "            \   'linux': 'make',
    "            \   'unix': 'gmake',
    "            \   },
    "            \})

    call dein#add('Shougo/unite.vim')
    call dein#add("basyura/unite-firefox-bookmarks")
    call dein#add("liquidz/unite-bookmark-file")
    call dein#add("Shougo/neomru.vim")
    call dein#add("Shougo/denite.nvim")
    call dein#add("Shougo/unite-session")

    " main tools
    call dein#add("scrooloose/nerdtree")
    call dein#add("ivalkeen/nerdtree-execute")
    call dein#add("mortonfox/nerdtree-iterm")
    call dein#add("scrooloose/nerdcommenter")
    call dein#add("majutsushi/tagbar")
    call dein#add("tpope/vim-surround")
    call dein#add("jaredpar/EasyMotion")
    call dein#add("tommcdo/vim-exchange")
    call dein#add("tpope/vim-scriptease")
    call dein#add("foursking/vim-doc-cn")
    call dein#add("flazz/vim-colorschemes")
    call dein#add("dhruvasagar/vim-dotoo")
    call dein#add("jceb/vim-orgmode")
    call dein#add("Shougo/vimfiler.vim")

    " vim unittest
    call dein#add("h1mesuke/vim-unittest")
    call dein#add("thinca/vim-themis")
    call dein#add("kana/vim-vspec")
    call dein#add("junegunn/vader.vim")

    " misc
    call dein#add("vim-scripts/genutils")
    call dein#add("vim-scripts/grep.vim")
    call dein#add("tpope/vim-fugitive")
    call dein#add("mileszs/ack.vim")
    call dein#add("vim-scripts/TaskList.vim")
    call dein#add("bolasblack/gtrans.vim")
    call dein#add("vim-scripts/TagmaTasks")
    call dein#add("bling/vim-airline")
    call dein#add("equalsraf/neovim-gui-shim")
    call dein#add("jonhiggs/MacDict.vim")
    " nyaovim UI plugins
    call dein#add("rhysd/nyaovim-markdown-preview")
    call dein#add("rhysd/nyaovim-mini-browser")

    " lang
    call dein#add("neomake/neomake")
    call dein#add("c-brenn/phoenix.vim")
    call dein#add("tpope/vim-projectionist")
    call dein#add("ludovicchabant/vim-gutentags")
    call dein#add("Rykka/riv.vim")
    call dein#add("mattn/emmet-vim")
    call dein#add("godlygeek/tabular")
    "call dein#add("plasticboy/vim-markdown")
    call dein#add("gabrielelana/vim-markdown")
    call dein#add("lepture/vim-jinja")
    call dein#add("Sirver/ultisnips")
    call dein#add("jiangmiao/auto-pairs")
    call dein#add("vim-scripts/Python-mode-klen")
    call dein#add("scrooloose/syntastic")
    call dein#add("dgryski/vim-godef")
    call dein#add("Blackrush/vim-gocode")

    " dein config finish
    call dein#end()
    call dein#save_state()
endif
" auto install
if dein#check_install()
    call dein#install()
endif

" source my config
let $hr_config_dir = $HOME . "/.config/nvim/config"
source $hr_config_dir/hr_global_settings.vim
source $hr_config_dir/hr_keymap.vim
source $hr_config_dir/hr_command.vim
source $hr_config_dir/plugin.vim

" add python3 features
let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
"1}}}
