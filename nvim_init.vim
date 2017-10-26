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
normal "set runtimepath+=" . g:hk_dein_path

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

call dein#add('Shougo.unite.vim')


" dein config finish
call dein#end()
" 1}}}

