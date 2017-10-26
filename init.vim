"------------------------------------------------------------------
" File: nvim_init.vim
" Author: hackrole
" Email: daipeng123456@gmail.com
" Create At: 2017-10-26
" Description: neovim配置文件
"------------------------------------------------------------------

"------------------------------------------------------------------
" [dein.vim config] {{{1
"------------------------------------------------------------------
set nocompatible
be mswin
filetype off
if has('gui_macvim')
    set macmeta
endif

" path to dein.vim
let g:hk_dein_path = expand("~/.config/nvim/dein/repos/github.com/Shougo/dein.vim")
" path to plugins root path
let g:hk_dein_plugin_path = expand("~/.config/nvim/dein")
" add dein.vim to vimruntimepath
execute "set runtimepath+=" . g:hk_dein_path

if dein#load_state(g:hk_dein_plugin_path)
    call dein#begin(g:hk_dein_plugin_path)
    call dein#add('Shougo/dein.vim')
    call dein#add('Shougo/vimproc.vim', {
                \ 'build': {
                \   'windows': 'tools\\update-dll-mingw',
                \   'cygwin': 'make -f make_cygwin.mak',
                \   'mac': 'make -f make_mac.mak',
                \   'linux': 'make',
                \   'unix': 'gmake',
                \   },
                \})

    call dein#add('Shougo/unite.vim')
    call dein#add("Shougo/denite.vim")

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

    " vim unittest
    call dein#add("hlmesuke/vim-unittest")
    call dein#add("kana/vim-vspec")

    " misc
    call dein#add("vim-scripts/genutils")
    call dein#add("vim-scripts/grep.vim")
    call dein#add("tpope/vim-fugitive")
    call dein#add("mileszs/ack.vim")
    call dein#add("vim-scripts/TaskList.vim")
    call dein#add("bolasblack/gtrans.vim")
    call dein#add("vim-scripts/TagmaTasks")
    call dein#add("bling/vim-airline")

    " lang
    call dein#add("neomake/neimake")
    call dein#add("c-brenn/phoenix.vim")
    call dein#add("tpope/vim-projectionist")
    call dein#add("ludovicchabant/vim-gutentags")
    call dein#add("Rykka/riv.vim")
    call dein#add("mattn/emmet-vim")
    call dein#add("godlygeek/tabular")
    call dein#add("plasticboy/vim-markdown")
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
" 1}}}


" colorscheme tabula
colorscheme grovbox
