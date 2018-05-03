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
let g:hr_base_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let g:hr_dein_plugin_dir = g:hr_base_dir . "/dein/repos/github.com/Shougo/dein.vim"
let g:hr_dein_install_dir = g:hr_base_dir . "/dein"
let g:hr_config_dir = g:hr_base_dir . "/config/"

" set runtimepath for autoload_funcs and dein plugin
execute 'set runtimepath^=' . g:hr_base_dir
execute "set runtimepath+=" . g:hr_dein_plugin_dir

" path to plugins root path
let g:hk_dein_plugin_path = expand("~/.config/nvim/dein")
" add dein.vim to vimruntimepath

if dein#load_state(g:hr_dein_install_dir)
    call dein#begin(g:hr_dein_install_dir)
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
    "call dein#add("hecal3/vim-leader-guide")

    " main tools
    call dein#add("scrooloose/nerdtree")
    call dein#add("tpope/vim-vinegar")
    call dein#add("ivalkeen/nerdtree-execute")
    call dein#add("mortonfox/nerdtree-iterm")
    call dein#add("scrooloose/nerdcommenter")
    call dein#add("tpope/vim-vinegar")
    call dein#add("majutsushi/tagbar")
    call dein#add("tpope/vim-surround")
    call dein#add("easymotion/vim-easymotion")
    call dein#add("junegunn/vim-easy-align")
    call dein#add("tommcdo/vim-exchange")
    call dein#add("tpope/vim-scriptease")
    call dein#add("foursking/vim-doc-cn")
    call dein#add("flazz/vim-colorschemes")
    call dein#add("dhruvasagar/vim-dotoo")
    call dein#add("jceb/vim-orgmode")

    """ youcompleteme
    "call dein#add("Valloric/YouCompleteMe", {"build": "./install.py --all"})
    """ deoplete completion
    call dein#add("Shougo/deoplete.nvim", )
    " python
    call dein#add("zchee/deoplete-jedi")
    call dein#add("davidhalter/jedi-vim")
    " vimscript
    call dein#add("Shougo/neco-vim")
    " java
    call dein#add("artur-shaik/vim-javacomplete2")
    " haskell ghc
    call dein#add("eagletmt/neco-ghc")
    " golang
    call dein#add("zchee/deoplete-go", {"build": 'make'})
    " elixir
    call dein#add("awetzel/elixir.nvim", {"build": './install.sh'})
    " javascript
    call dein#add("carlitux/deoplete-ternjs", {"build": "npm install -g tern"})
    " typescript
    call dein#add("mhartington/nvim-typescript")

    " vim unittest
    call dein#add("h1mesuke/vim-unittest")
    call dein#add("thinca/vim-themis")
    call dein#add("kana/vim-vspec")
    call dein#add("junegunn/vader.vim")

    " misc
    call dein#add("jmcantrell/vim-virtualenv")
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
    "call dein#add("neomake/neomake")
    call dein#add("c-brenn/phoenix.vim")
    call dein#add("tpope/vim-projectionist")
    call dein#add("ludovicchabant/vim-gutentags")
    "call dein#add("Rykka/riv.vim")
    call dein#add("mattn/emmet-vim")
    call dein#add("godlygeek/tabular")
    "call dein#add("plasticboy/vim-markdown")
    call dein#add("gabrielelana/vim-markdown")
    call dein#add("lepture/vim-jinja")
    call dein#add("Sirver/ultisnips")
    call dein#add("jiangmiao/auto-pairs")
    call dein#add("vim-scripts/Python-mode-klen")
    call dein#add("scrooloose/syntastic")
    "call dein#add("dgryski/vim-godef")
    "call dein#add("Blackrush/vim-gocode")
    call dein#add("fatih/vim-go")
    call dein#add("jodosha/vim-godebug")
    call dein#add("posva/vim-vue")

    " dein config finish
    call dein#end()
    call dein#save_state()
endif
" auto install
if dein#check_install()
    call dein#install()
endif

" source my config
call hr_misc#load_config("hr_global_settings.vim")
call hr_misc#load_config("hr_keymap.vim")
call hr_misc#load_config("hr_command.vim")
call hr_misc#load_config("plugin.vim")

" add python3 features
" TODO use autoload or env
"let g:python2_host_prog = '/usr/local/bin/python'
"let g:python3_host_prog = '/usr/local/bin/python3'
let g:python_host_prog = '/Users/hackrole/.asdf/installs/python/2.7.17/bin/python'
let g:python3_host_prog = '/Users/hackrole/.asdf/installs/python/3.7.5/bin/python'
"1}}}
