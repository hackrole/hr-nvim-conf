"------------------------------------------------------------------
" File: nvim_init.vim
" Author: hackrole
" Email: daipeng123456@gmail.com
" Create At: 2017-10-26
" Description: neovim配置文件
"------------------------------------------------------------------
" vim: foldmethod=marker foldlevel=0 foldenable

" always the first line to load
set nocompatible
if has('gui_macvim')
   set macmeta
endif

let g:hr_base_dir = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let g:hr_config_dir = g:hr_base_dir . "/config/"

" bootstrap vim-plug automatically
" let g:plug_install_dir = "~/.local/share/nvim/site/autoload/plug.vim"
" if empty(glob(g:plug_install_dir))
"     silent !curl -fLo ~/.local.share/nvim/site/autoload/plug.vim --create-dirs 
"         \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"     " autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif


call plug#begin("~/.config/nvim/plugged")

"------------------------------------------------------------------
" [general plugin] 
"------------------------------------------------------------------
"{{{1
" nertree
Plug 'scrooloose/nerdtree'
Plug 'ivalkeen/nerdtree-execute'
Plug 'mortonfox/nerdtree-iterm'
Plug 'scrooloose/nerdcommenter'

" airline, instead of powerline
Plug 'bling/vim-airline'

Plug 'mileszs/ack.vim'

" vim colorschemes主题
Plug 'flazz/vim-colorschemes'

" vim style
" Plugin 'kakkyz81/evervim'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/vim-easy-align'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-repeat'

Plug 'vim-scripts/matchit.zip'

Plug 'terryma/vim-multiple-cursors'
Plug 'vim-scripts/sessionman.vim'

Plug 'jiangmiao/auto-pairs'

" vim oil and vinegar
Plug 'tpope/vim-vinegar'

" ctrlp
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'Yggdroot/LeaderF'
" unite quick file/buffer explorer
Plug 'Shougo/unite.vim'
Plug 'Shougo/denite.nvim'

Plug 'osyo-manga/vim-over'

Plug 'mbbill/undotree'

Plug 'gcmt/wildfire.vim'
" git conflict quick
Plug 'rhysd/conflict-marker.vim'

" XXX  nedd keep?
" better default settings
Plug 'tpope/vim-sensible'

Plug 'hecal3/vim-leader-guide'
" 1}}}

"------------------------------------------------------------------
" [writing] 
"------------------------------------------------------------------
"{{{1
Plug 'reedes/vim-litecorrect'
Plug 'reedes/vim-textobj-sentence'
Plug 'reedes/vim-textobj-quote'
Plug 'reedes/vim-wordy'
" 1}}}

"------------------------------------------------------------------
" [general programming] 
"------------------------------------------------------------------
"{{{1
" program syntax checker, support many language
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'
Plug 'godlygeek/tabular'
Plug 'luochen1990/rainbow'
Plug 'majutsushi/tagbar'

Plug 'neomake/neomake'

" unittest for vim-script
Plug 'h1mesuke/vim-unittest'
" BDD-test for vim-script
Plug 'kana/vim-vspec'
Plug 'junegunn/vader.vim'
" 1}}}

"------------------------------------------------------------------
" [auto-complete] 
"------------------------------------------------------------------
"{{{1
"Plugin 'neocomplcache'
"Plug 'Valloric/YouCompleteMe'

" snippets
Plug 'vimscript/UltiSnips'
" 1}}}

"------------------------------------------------------------------
" [python] 
"------------------------------------------------------------------
"{{{1
Plug 'python-mode/python-mode'
Plug 'jmcantrell/vim-virtualenv'
" 1}}}

"------------------------------------------------------------------
" [golang]
"------------------------------------------------------------------
"{{{1
" golang
" code jump
Plug 'dgryski/vim-godef'
" gocode for auto-complete
Plug 'Blackrush/vim-gocode'
Plug 'fatih/vim-go'
Plug 'jodosha/vim-godebug'
" 1}}}

"------------------------------------------------------------------
" [javascript html and frontend] 
"------------------------------------------------------------------
"{{{1
" typescript
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'

Plug 'mattn/emmet-vim'
Plug 'skammer/vim-css-color'
"Plugin 'css-color-preview'

" javascript/nodjs
Plug 'jelera/vim-javascript-syntax'
" XXX install failed
" Plug 'vimscript/JavaScript-Indent'
Plug 'marijnh/tern_for_vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'gkz/vim-ls'
Plug 'moll/vim-node'
Plug 'digitaltoad/vim-jade'
" 1}}}

"------------------------------------------------------------------
" [erlang elixir] 
"------------------------------------------------------------------
"{{{1
" elixir plugin
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'c-brenn/phoenix.vim'
" 1}}}

"------------------------------------------------------------------
" [other program] 
"------------------------------------------------------------------
"{{{1
Plug 'ekalinin/Dockerfile.vim'

Plug 'gabrielelana/vim-markdown'

" plantuml
Plug 'aklt/plantuml-syntax'

" ruby on rails
" XXX install failed
" Plug 'vimscript/rails.vim'

" erlang
" XXX install failed
" Plug 'vimscript/Vimerl'

" rst plugin
Plug 'Rykka/riv.vim'
" markdown plugin
Plug 'plasticboy/vim-markdown'
Plug 'lepture/vim-jinja'
" XXX install failed
Plug 'hughbien/md-vim'
" scala
" Plug 'derekwyatt/vim-scala'
"Plugin 'ensime/ensime-vim'
" 1}}}
"------------------------------------------------------------------
" [color theme] 
"------------------------------------------------------------------
"{{{1
Plug 'junegunn/seoul256.vim'
" 1}}}

"------------------------------------------------------------------
" [misc] 
"------------------------------------------------------------------
"{{{1
Plug 'bolasblack/gtrans.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'christoomey/vim-tmux-runner'
Plug 'vim-scripts/TaskList.vim'
Plug 'vim-scripts/TagmaTasks'
" 1}}}


Plug 'equalsraf/neovim-gui-shim'

" Plug 'csliu/a.vim'
" load error!
Plug 'tpope/vim-scriptease'

Plug 'tpope/vim-fugitive'
"Plugin 'minibufexplorerpp'


"Plug 'tpope/vim-projectionist'
"Plug 'ludovicchabant/vim-gutentags'


call plug#end()


" source my config
call hr_misc#load_config("hr_global_settings.vim")
call hr_misc#load_config("hr_keymap.vim")
call hr_misc#load_config("hr_command.vim")
call hr_misc#load_config("plugin.vim")

" add python3 features
" TODO use autoload or env
let g:python2_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'
"let g:python_host_prog = '/Users/hackrole/.asdf/installs/python/2.7.17/bin/python'
"let g:python3_host_prog = '/Users/hackrole/.asdf/installs/python/3.7.5/bin/python'
