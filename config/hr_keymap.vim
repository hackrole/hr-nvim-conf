"------------------------------------------------------------------
" File: keymap.vim
" Author: hackrole
" Email: daipeng123456@gmail.com
" Create At: 2017-12-28
" Description: my keymap in nvim
"------------------------------------------------------------------
"
"------------------------------------------------------------------
" [use <space> as leaderkey. <;> as localleaderkey] {{{1
"------------------------------------------------------------------
let g:mapleader = " "
let g:maplocalleader = ';'
" release keymappings prefixes for <space> to work
nnoremap <Space> <Nop>
xnoremap <Space> <Nop>
nnoremap , <Nop>
xnoremap , <Nop>
nnoremap ; <Nop>
xnoremap ; <Nop>
"nnoremap m <Nop>
"xnoremap m <Nop>
inoremap jk <Esc>
" 1}}}
"------------------------------------------------------------------
" [keymap for toggle somethings] {{{1
"------------------------------------------------------------------
nnoremap <leader>tr :set relativenumber!<CR>
nnoremap <leader>tn :set number!<CR>
nnoremap <leader>tw :set wrap!<CR>
nnoremap <silent> <leader>th :nohlsearch<CR>
" TODO use unite instead
nnoremap <leader>tsh :set ft=html<CR>
nnoremap <leader>tsc :set ft=css<CR>
nnoremap <leader>tsp :set ft=php<CR>
nnoremap <leader>tsj :set ft=javascript<CR>
" 1}}}
" --------------------------------------------------
" [tab相关] {{{1
" --------------------------------------------------
"nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>tn :tabnew<CR>
"inoremap <leader>tc <Esc>:tabclose<CR>
"inoremap <leader>tn <Esc>:tabnew<CR>

nnoremap <C-t>p :tabprevious<CR>
nnoremap <C-t>n :tabnext<CR>
inoremap <C-t>p <Esc>:tabprevious<CR>
inoremap <C-t>n <Esc>:tabprevious<CR>

nnoremap <leader>t1 :tabnext 1<CR>
nnoremap <leader>t2 :tabnext 2<CR>
nnoremap <leader>t3 :tabnext 3<CR>
nnoremap <leader>t4 :tabnext 4<CR>
" 1}}}
" --------------------------------------------------
" [窗口操作] {{{1
" --------------------------------------------------
nnoremap <C-=> <C-w>=
nnoremap <C--> 3<C-w>-
nnoremap <C-+> 3<C-w>+
nnoremap <C-<> 3<C-w><
nnoremap <C->> 3<C-w>>

nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-W>k
inoremap <C-h> <Esc><C-w>h
inoremap <C-h> <Esc><C-w>l
inoremap <C-j> <Esc><C-w>j
inoremap <C-k> <Esc><C-W>k
" scroll other window
nnoremap <leader>sh <M-h>Mzt
nnoremap <leader>sj <M-j>Mzt
nnoremap <leader>sk <M-k>Mzt
nnoremap <leader>sl <M-l>Mzt
"------------------------------------------------------------------
" [nvim terminal keymap] {{{1
"------------------------------------------------------------------
noremap <leader>Ts :split<CR>:terminal tmux<CR>
if exists(':tnoremap')
    tnoremap <Esc> <C-\><C-n>
    tnoremap jk <C-\><C-n>
    tnoremap <M-n> <C-\><C-n>:tabprevious<CR>
    tnoremap <M-n> <C-\><C-n>:tabnext<CR>
    tnoremap <M-h> <C-\><C-n><C-w>h
    tnoremap <M-j> <C-\><C-n><C-w>j
    tnoremap <M-k> <C-\><C-n><C-w>k
    tnoremap <M-l> <C-\><C-n><C-w>l
endif
" 1}}}
" --------------------------------------------------
" [复制粘贴] {{{1
" --------------------------------------------------
"vnoremap <C-y> "+y
"nnoremap <C-p> "+p
"inoremap <C-p> <Esc>"+pa
"cnoremap <C-p> <C-R>+
" 1}}}
" [快捷按鍵] {{{1
" ===============
inoremap <M-o> <ESC>o
"inoremap <leader>o <Esc>o
"inoremap <leader>O <Esc>O
inoremap <M-S-o> <ESC>O
inoremap <C-o> <CR><ESC>O
inoremap <M-k> <ESC>O
inoremap <M-j> <CR>
inoremap <M-n> <Down>
inoremap <M-m> <Up>
" 1}}}
"------------------------------------------------------------------
" [normal-mode 下防emacs快捷键] {{{1
"------------------------------------------------------------------
"TODO: consider it.
"inoremap <C-n> <Down>
"inoremap <C-p> <Up>
inoremap <M-e> <Esc>$a
inoremap <M-a> <Esc>0i
inoremap <C-f> <Right>
inoremap <C-b> <left>
" 1}}}
" --------------------------------------------------
" [宏执行热键] {{{1
" --------------------------------------------------
" TODO:
" 1}}}
" --------------------------------------------------
" [快捷文件操作] {{{1
" --------------------------------------------------
" TODO: 优化成 项目目录列表
" 快捷生成ctags文件
"nn <leader>cr :!ctags -R `pwd`<CR>
" 快捷生成filenametags文件（需要shell脚本支持）
"nn <leader>fr :!gen_LFT<CR>
" 快捷寄存器剪切复制粘贴

vnoremap <M-a> "
" 快捷退出
nnoremap <M-q> :q!<CR>
"nn <C-q> :qa!<CR>
" Ctrl+s保存
noremap <C-s> :up<CR>
vnoremap <C-s> <C-C>:up<CR>
inoremap <C-s> <C-O>:up<CR>
" sudo save
cnoremap w!! w !sudo tee > /dev/null %
cnoremap s!! w !sudo -u www-data tee > /dev/null %
"1}}}

" pytest keyboard{{{1
" ======================
" XXX try more beautiful way
noremap <leader>ps Oimport pytest; pytest.set_trace()<Esc>
noremap <leader>pS Oimport ipdb; ipdb.set_trace()<Esc>
noremap <leader>pd O@pytest.mark.debug<Esc>
"1}} vim:fdm=marker:fdc=1

"------------------------------------------------------------------
" [cmdline keymap] {{{1
"------------------------------------------------------------------
" goto begin/end
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
" forward/backward char
cnoremap <C-f> <Right>
cnoremap <C-b> <left>
" forward/backward char
cnoremap <M-f> <S-Left>
cnoremap <M-b> <S-right>
" history next/previous
cnoremap <C-j> <Up>
cnoremap <C-k> <Down>
" 1}}}
"------------------------------------------------------------------
" [quick config edit and source] {{{1
"------------------------------------------------------------------
noremap <leader>er :<C-u>source %<CR>
" TODO  use unite.vim instead
noremap <silent> <leader>ei :<C-u>execute ':edit ' . hr_misc#get_nvim_config_fname("init.vim")<CR>
" 1}}}
