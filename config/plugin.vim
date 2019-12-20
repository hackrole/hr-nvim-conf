" ------------------------------------------------------------------------
" File: plugin.vim
" Author: hackrole
" Email: daipeng123456@gmail.com
" Description: 配件配置文件
" Last Modified: 2013-07-02
" TOOD: 考虑每个插件单独配置，最后统一source
" -------------------------------------------------------------------------

" [netrw相关配置] {{{1
" =========================================================================
" 支持ftp/ssh等协议编辑远程文件的插件
let g:netrw_home = "~/.vim/temp/netrw"

" 1}}}

" [Emmet相关配置] {{{1
" =========================================================================
let g:user_emmet_settings = {
\  'indentation' : '  ',
\  'variables': {
\       'lang': 'en',
\   },
\   'html': {
\       'filters': 'html',
\       'expandos': {},
\       'default_attributes': {
\           'a': {'href': '#'},
\           'script': [{'type': 'text/javascript'}],
\           'link': [{'rel': 'stylesheet'}, {'href': ''}],
\       },
\       'aliases': {
\           'scp': 'script',
\           'bq': 'blockquote',
\           'obj': 'object',
\           'hd': 'header',
\           'st': 'section',
\       },
\       'empty_element_suffix': ' />',
\   },
\   'css': {
\       'filters': 'fc',
\   },
\}
" only insert mode
let g:user_emmet_mode='a'
" not only use for html/css
let g:user_emmet_install_global = 1

" key bind
let g:user_emmet_leader_key  = '<C-y>'
"let g:user_emmet_expandabbr_key = '<C-;>'
let g:user_emmet_expandabbr_key = '<C-3>'
imap <C-3> <plug>(emmet-expand-abbr)
let g:user_emmet_next_key = '<C-y>n'
let g:user_emmet_prev_key = '<C-y>p'

"  1}}}

"------------------------------------------------------------------
" [CmdlineComplete相关配置] {{{1
"------------------------------------------------------------------
"cmap <unique> <silent> <M-p> <Plug>CmdlineCompleteBackward
"cmap <unique> <silent> <M-n> <Plug>CmdlineCompleteForward
" 1}}}

" [NERDTree相关配置] {{{1
" ==================================================================
" TODO: doc reaad and <f2>
" 映射切换按键
nnoremap <silent> <leader>nt :NERDTreeToggle<CR>
nnoremap <silent> <leader>nc :NERDTreeCWD<CR>
inoremap <silent> <C-2>nt <Esc>:NERDTreeToggle<cr>
inoremap <silent> <C-2>nc <Esc>:NERDTreeCWD<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>
inoremap <silent> <F3> <Esc>:NERDTreeToggle<CR>
nnoremap <silent> <F2> :exec("NERDTree ".expand('%:h'))<CR>
inoremap <silent> <F2> <Esc>:exec("NERDTree ".expand('%:h'))<CR>
" nerdtree ignore
let NERDTreeIgnore=['\.o$']
let NERDTreeIgnore+=['\.pyc$']
let NERDTreeIgnore+=['\.bak$']
let NERDTreeIgnore+=['\.elc']
let NERDTreeIgnore+=['^ctags$']
let NERDTreeIgnore+=['^etags$']
let NERDTreeIgnore+=['^__pycache__$']
let NERDTreeIgnore+=['^filenametags$']
let NERDTreeIgnore+=['^cscope\.\(files\|in\.out\|out\|po.out\)$']
" more colourful
let NERDChristmasTree=1
" set nerdtree bookmark file path
let NERDTreeBookmarksFile=expand('~')."/.vim/temp/nerdtree.bookmarks"
" show bookmarks on startup
let NERDTreeShowBookmarks=0
" not show hidden file on startup
let NERDTreeShowHidden=0
" show line number on startup
let NERDTreeShowLineNumbers=1
" nerdtree positioin
let NERDTreeWinPos="left"
" nerdtree width
let NERDTreeWinSize = 35

" 1}}}

" [Conque相关配置] {{{1
" =================================================
" Conque指定Python版本
let g:ConqueTerm_PyVersion=2
" 取消警告信息
let g:ConqueTerm_StartMessages = 1
" TODO: setlocal listchars
" 1}}}
" --------------------------------------------------
"  [Riv相关配置]{{{1
" -------------------------------------------------
" set never fold
let g:riv_fold_level=0
"1}}}
" --------------------------------------------------
"  [Tagbar相关配置]{{{1
" --------------------------------------------------
" taglist的替代插件
nmap <F4> :TagbarToggle<CR>
imap <F4> <Esc>:TagbarToggle<CR>
nmap <C-F4> :TagbarTogglePause<CR>
imap <C-F4> :TagbarTogglePause<CR>
" mac OS use brew install ctags
"if has("macunix")
"    let g:tagbar_ctags_bin = "/usr/local/Celler/ctags/5.8_1/bin/ctags"
"endif
" default sort tags by order in source file
let g:tagbar_sort=0
" show line number<1-absolute, 2-relative>
let g:tagbar_show_linenumbers=1
" default not fold the tags
let g:tagbar_fold_level=99
" TODO Tagbar golang gotags支持
let g:tagbar_type_go = {
\   'ctagstype': 'go',
\   'kinds': [
\       'p:package',
\       'i:imports:1',
\       'c:constants',
\       'v:variables',
\       't:types',
\       'n:interfaces',
\       'w:fields',
\       'e:embedded',
\       'm:methods',
\       'r:constructor',
\       'f:functions',
\   ],
\   'sro': '.',
\   'kind2scope': {
\       't': 'ctype',
\       'n': 'ntype',
\   },
\   'scope2kind': {
\       'ctype': 't',
\       'ntype': 'n',
\   },
\   'ctagsbin': 'gotags',
\   'ctagsargs': '-sort -silent'
\}
" 支持elixir
let g:tagbar_type_elixir = {'ctagstype': 'elixir', 'kinds': ['f:functions:0:0', 'c:callbacks:0:0', 'd:delegates:0:0', 'e:exceptions:0:0', 'i:implementations:0:0', 'a:macros:0:0', 'o:operators:0:0', 'm:modules:0:0', 'p:protocols:0:0', 'r:records:0:0'], 'sro': '.', 'kind2scope': {'m': 'modules'}, 'scope2kind': {'modules': 'm'}}
"1}}}
" -------------------------------------------------
"  [TagmaTask插件配置]{{{1
" -------------------------------------------------
" use <leader>ps as prefix
let g:TagmaTasksPrefix = '<leader>pt'
" not jump to the first task when startup
let g:TagmaTasksJumpTask=0
" the work as task
let g:TagmaTaskTokens = ['FIEXME', 'TODO', 'NOTE', 'WARNING']
" list all tasks under current directions
nn <leader>ptP :TagmaTasks **/*.py<CR>
"1}}}
" -------------------------------------------------
"  [gtrans配置]{{{1
" -------------------------------------------------
" key to translate zh word to en
nn <leader>gT :call Gtrans('en')
vn <leader>gV :call GetTransVis('en')
"1}}}
" -------------------------------------------------
"  [grep配置]{{{1
" -------------------------------------------------
" TODO: conf and use
"1}}}
" -------------------------------------------------
"  [a.vim配置]{{{1
" -------------------------------------------------
" not create one when header file not exists.
let g:alternateNoDefaultAlternate = 1
" set the search path
let g:alternateSearchPath = "abs:/usr/include/x86_64-linux-gnu,sfr:../lib,sfr:../include,srf../inc"
"1}}}
" --------------------------------------------------
" [ ctags配置] {{{1
" --------------------------------------------------
" TODO: project 相关
if filereadable('./tags')
   set tags+=./tags
endif
if filereadable('./ctags')
   set tags+=./ctags
endif
"set tags+=~/.vim/tagfiles/scrapy.0.16.4.tags
"set tags+=~/.vim/tagfiles/sqlachemy.0.8.1.tags
"set tags+=~/.vim/tagfiles/selenium.2.33.0.tags
"1}}}
" --------------------------------------------------
"---------------------------------------------------
"[ ctrlp配置 ] {{{1
"---------------------------------------------------
" window positon and size
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'
" jump method
let g:ctrlp_switch_buffer = 'Et'
" how-to find work-dir
let g:ctrlp_working_path_mode = 'ra'
" cache dir
let g:ctrlp_use_caching = 0
let g:ctrlp_cache_dir = $HOME.'/.vim/temp/ctrlp_cache'
" clear cache
let g:ctrlp_clear_cache_on_exit = 1
" show hide file/dir
let g:ctrlp_show_hidden = 0
" show hidden file
let g:ctrlp_show_hidden = 1
" ignore files
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]\.(git|hg|svn)$',
            \ 'file': '\v\.(exe|so|dll|pyc)$',
            \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
            \ }
"1}}}
" --------------------------------------------------
" [ UltiSnips配置 ] {{{1
" --------------------------------------------------
" ultisnips回自动监测has(python) or has(python3), 监测失败可以自己手动设置
"let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsEditSplit = "horizontal"
" keys
nnoremap <leader><F7> :UltiSnipsEdit<CR>
let g:UltiSnipsExpandTrigger = "<C-e>"
let g:UltiSnipsListSnippets = "<F7>"
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"

augroup ultisnips_sub
    autocmd FileType jinja :UltiSnipsAddFiletypes jinja.html
augroup END

" 1}}}
"-------------------------------------------------------------------------
" ------------------------------------------------------
" [ autopair配置 ]{{{1
" ------------------------------------------------------
" TODO: add new autopairs and buffer local pairs
" TODO: 按键优化, wrap/jump
" let g:AutoPairs = 
" let b:AUtoPairs = 
" key to toggle the auto_pair on/off
"let g:AutoPairsShortcutToggle = "<leader>pt"
" key to jump the next closed pair
"let g:AutoPairsShortcutJump = "<leader>pj"
" key to fast wrap the auto-pair
"let g:AutoPairsShortcutFastWrap = "<leader>pp"
"1}}}
" --------------------------------------------------------------
"  [ python-mode-klen配置 ]{{{1
" --------------------------------------------------------------
let g:pymode = 1
" trim unused white spaces on save
let g:pymode_trim_whitespaces = 1
" pymode folding
let g:pymode_folding = 1
" enable pymode-motion
let g:pymode_motion = 1
" keys to view python doc
let g:pymode_doc_key = "<leader>qd"
" keys to run python
let g:pymode_run_key = "<leader>qr"
" quick key to break code
let g:pymode_breakpoint_bind = "<leader>qb"

" use Syntastic for python-lint, close python-mode lint
let g:pymode_lint = 0
" set pylint checker
"let g:pymode_lint_checker = "pyflaskes,pep8,mccabe"
" disbale pymode-lint auto checker
let g:pymode_lint_on_write = 0
" disable usual errors check
let g:pymode_lint_select = ""
" not jump to the first error
let g:pymode_lint_jump = 0
" use quickfix for pylint check
let g:pymode_lint_hold = 1
" set the check output min and max height
let g:pymode_lint_minheight = 12
let g:pymode_lint_maxheight = 14
" key for pylint
"nn <leader>ql :PymodeLint<CR>
"" key for auto pep8 fix
"nn <Leader>qa :PymodeLintAuto<CR>
"" key for Pylint toggle
"nn <Leader>qt :PymodeLintToggle<CR>

" rope complete keys
let g:pymode_rope = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_autocomplete_map = "<A-2>"
let g:pymode_rope_lookup_project = 0
"1}}}
"------------------------------------------------------------------
" [python my-virtualenv配置] {{{1
"------------------------------------------------------------------
noremap <leader>pv :VirtualEnvActivate<space><C-D>
" 1}}}

" -------------------------------------------------
"  [ syntastic配置 ] 多语言语法检查{{{1
" --------------------------------------------------
" check on open and save
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
" use all checker at once
let g:syntastic_aggregate_errors = 1
" auto open error window while errors
let g:syntastic_auto_loc_list = 2
let g:syntastic_always_populate_loc_list = 1
" set sign symbol
let g:syntastic_error_symbol = 'EE'
let g:syntastic_style_error_symbol = 'E>'
let g:syntastic_warning_symbol = 'WW'
let g:syntastic_style_warning_symbol = 'W>'
" never mouse
let g:syntastic_enable_balloons = 0
" use highlight
let g:syntastic_enable_highlighting = 0
" error window height
let g:syntastic_loc_list_height = 5

" always active, use toggle to passive
let g:syntastic_mode_map = {
            \   'mode': 'active',
            \   'active_filetypes': [],
            \   'passive_filetypes': []}

" set the checker
let g:syntastic_c_checkers = ['gcc', 'make', 'cppcheck']
let g:syntastic_javascript_checkers = ['jshint', "eslint"]
"let g:syntastic_python_checkers = ['python', 'pylint', 'pep8', 'flake8']
let g:syntastic_python_checkers = ['flake8']
" elixir checker
let g:syntastic_enable_elixir_checker = 1
let g:syntastic_elixir_checkers = ['elixir']
" golang checker
let g:syntastic_go_checkers = ['go', 'govet']

" not working now. set lua checker
let g:syntastic_lua_checkers = ["luac", "luacheck"]
let g:syntastic_lua_luacheck_args = "--no-unused-args"

" TODO keymap
nnoremap <leader>Psc :SyntasticCheck<CR>
nnoremap <leader>Pst :SyntasticToggleMode<CR>
nnoremap <leader>Pse :Errors<CR>
nnoremap <leader>Psi :SyntasticInfo<CR>
inoremap <C-2>Psc :SyntasticCheck<CR>
inoremap <C-2>Pst :SyntasticToggleMode<CR>
inoremap <C-2>Pse :Errors<CR>
inoremap <C-2>Psi :SyntasticInfo<CR>


"1}}}
"  [ cscope配置 ] {{{1
" --------------------------------------------------
" TODO: read doc and start to use
if has("cscope")
    set csprg=/usr/bin/cscope
    set cst
    set nocscopeverbose
    if filereadable("./cscope.out")
        cs add cscope.out
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif
    set cscopeverbose
    " 设置是否使用quickfix
    set cscopequickfix=s-,g-,d-,c-,t-,e-,f-,i-
    " 设置文件查找顺序
    set cscopetag
    nmap <A-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>g :scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>c :scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>t :scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>e :scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-\>i :scs find i <C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :scs find d <C-R>=expand("<cword>")<CR><CR>
    " open quickfix bymyself, it is one error now
    nmap <C-\>o :copen<CR>
endif
"1}}}
"------------------------------------------------------------------
" [YouCompleteMe] {{{1
"------------------------------------------------------------------
" complete for typescript
if !exists("g:ycm_semantic_triggers")
    let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']
" 1}}}
" -----------------------------------------------------------
"  [android开发配置]{{{1
" -----------------------------------------------------------
let g:adtVimAndroidPath = "/usr/local/app/adt64/sdk"
"  1}}}

" -----------------------------------------------------------
" [javascirpt-libraries-syntax.vim]配置{{{1
" -----------------------------------------------------------
let g:used_javascript_libs = 'underscore,backbone,jQuery'
" 1}}}

"------------------------------------------------------------------
" [ack.vim配置] {{{1
"------------------------------------------------------------------
" use ag instead of ack for more speed
let g:ackprg = "ag --vimgrep --smart-case"
cnoreabbrev ag Ack!
cnoreabbrev aG Ack!
cnoreabbrev Ag Ack!
cnoreabbrev AG Ack!
" 1}}}

"------------------------------------------------------------------
" [vim-dotoo配置] {{{1
"------------------------------------------------------------------
let g:dotoo#agenda#files = [expand('~/.vim/agendas/works.dotoo'), expand("~/.vim/agendas/home.dotoo"), expand("~/.vim/agendas/dotoo.dotoo")]
let g:dotoo#capture#refile = expand('~/.vim/refile.dotoo')
" 1}}}
"------------------------------------------------------------------
" [neomake config] {{{1
"------------------------------------------------------------------
"autocmd! BufWritePost * NeoMake
" 1}}}
"------------------------------------------------------------------
" [vim-gutentags] {{{1
"------------------------------------------------------------------
let g:gutentags_cache_dir='~/.tags_cache'
" 1}}}
"------------------------------------------------------------------
" [vimfiler] {{{1
"------------------------------------------------------------------
" use as default
let g:vimfiler_as_default_explorer = 1
" 1}}}
"------------------------------------------------------------------
" [Alchemist.vim] {{{1
"------------------------------------------------------------------
let g:alchemist_tag_disable = 1
" 1}}}
"
"------------------------------------------------------------------
" [nyaovim-markdown-preview config] {{{1
"------------------------------------------------------------------
" auto preview while edit markdown-file
let g:markdown_preview_auto = 0
" use default mapping
let g:markdown_preview_no_default_mapping = 0
" TODO it not work now. mapping for it
"augroup marodown-preview-config
"    autocmd!
"    autocmd BufNewFile,BufRead *.md call s:hr_markdown_preview_config()
"augroup END
"function s:hr_markdown_preview_config()
"    nnoremap <buffer><silent> <localleader>np :<C-u>StartMarkdownPreview<CR>
"    nnoremap <buffer><silent> <localleader>ns :<C-u>StopMarkdownPreview<CR>
"    nmap <buffer><silent> <localleader>nj <Plug>(markdown-preview-scroll-up)
"    nmap <buffer><silent> <localleader>nk <Plug>(markdown-preview-scroll-down)
"endfunction
" 1}}}

"------------------------------------------------------------------
" [Unite/Denite config] {{{1
"------------------------------------------------------------------
call unite#custom#profile('default', 'context', {
            \    'start_insert': 1,
            \    'complete': 0,
            \    'direction': 'botright',
            \    'winheight': 10,
            \})
nnoremap <leader>uab :UniteBookmarkAdd<space>
nnoremap <leader>ub :<C-u>Unite buffer<CR>
nnoremap <leader>uB :<C-u>Unite bookmark<CR>
nnoremap <leader>um :<C-u>Unite menu<CR>
nnoremap <leader>uM :<C-u>Unite mapping<CR>
nnoremap <leader>uF :<C-u>Unite file_mru<CR>
" tmp not use denite.vim
"if has('nvim')
"    nnoremap <leader>uf :Denite file_rec<CR>
"    nnoremap <leader>uh :Denite hotfile<CR>
"else
"    nnoremap <leader>uf :Unite file_rec<CR>
"endif
nnoremap <leader>uf :Unite file_rec file/new<CR>
nnoremap <leader>uh :Denite hotfile<CR>
nnoremap <leader>uw :Unite window<CR>
nnoremap <leader>ug :Denite grep<CR>
nnoremap <leader>uj :Unite jump<CR>

augroup unitegroup
    autocmd!
    autocmd FileType unite call s:unite_my_settings()
augroup END
function! s:unite_my_settings()
    nnoremap <silent><buffer><expr> F unite#do_action('vimfiler')
    nnoremap <silent><buffer><expr> s unite#do_action('split')
    inoremap <silent><buffer><expr> <C-s> unite#do_action('split')
    nnoremap <silent><buffer><expr> cd unite#do_action('lcd')
endfunction
"1}}}
"------------------------------------------------------------------
" [deoplete config] {{{1
"------------------------------------------------------------------
" automatic start
let g:deoplete#enable_at_startup = 1
" the numbers of chars to start auto complete
let g:deoplete#auto_complete_start_length = 2
" the candidates limit
let g:deoplete#max_list = 100
let g:deoplete#sources = {}
let g:deoplete#sources._ = ['buffer']
let g:deoplete#sources.python = ['jedi', 'ultisnips', 'buffer']
let g:deoplete#sources.rust = ['racer', 'ultisnips', 'buffer']
let g:deoplete#sources.haskell = ['ghc', 'ultisnips', 'buffer']
let g:deoplete#sources.go = ['go', 'ultisnips', 'buffer']
let g:deoplete#sources.elixir = ['elixir', 'ultisnips', 'buffer']
let g:deoplete#sources.javascript = ['ternjs', 'ultisnips', 'buffer']
let g:deoplete#sources.typescript = ['typescript', 'ultisnips', 'buffer']
" toggle auto complete
nnoremap <silent> <leader>Tdt :<C-u>call deoplete#toggle()<CR>
inoremap <silent><expr> <C-g> deoplete#undo_completion()
inoremap <silent><expr> <C-1> deoplete#mapping#manual_complete()
" 1}}}
"------------------------------------------------------------------
" [deoplete-jedi/vim-jedi for python] {{{1
"------------------------------------------------------------------
"let g:python_host_prog = '/Users/daipeng/.virtualenvs/neovim-env/bin/python'
"let g:python3_host_prog = '/Users/daipeng/.virtualenvs/neovim-env/bin/python'
let g:jedi#completions_enabled = 0
" 1}}}
"------------------------------------------------------------------
" [deoplete-go config] {{{1
"------------------------------------------------------------------
" the was need for deoplete-go completion, for performance
let g:deoplete#sources#go#gocode_binary = expand("~/projects/mygo/bin/gocode")
" 1}}}

"------------------------------------------------------------------
" [easy-align config] {{{1
"------------------------------------------------------------------
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
" 1}}}
"------------------------------------------------------------------
" [vim-leader-guide config] {{{1
"------------------------------------------------------------------
"nnoremap <silent> <leader> :<C-u>LeaderGuide '<Space>'<CR>
"vnoremap <silent> <leader> :<C-u>LeaderGuideVisual '<Space>'<CR>
" 1}}}
"------------------------------------------------------------------
" [vim-go config] {{{1
"------------------------------------------------------------------
let g:hr_gopath = expand("~/projects/mygo")
" XXX not working now
"let g:go_template_file = "hello.go"
silent! execute ':GoPath ' . g:hr_gopath
augroup hr_goconfig
    autocmd!
    autocmd FileType go :call s:hr_goconfig_keymap()
augroup END
function! s:hr_goconfig_keymap()
    " this not work on neovim, and not work ok, use Dlv-vim instead
    "nnoremap <localleader>bt :<C-u>GoToggleBreakpoint<CR>
    "nnoremap <localleader>dd :<C-u>GoDebug<CR>
    "nnoremap <localleader>dt :<C-u>GoDebugTest<CR>
    nnoremap <localleader>gp :<C-u>GoPath<CR>
    " TODO use syntastic instead
    nnoremap <localleader>gl :<C-u>GoLint<CR>
    nnoremap <localleader>gd :<C-u>GoDoc<CR>
    nnoremap <localleader>gb :<C-u>GoDocBrowser<CR>
    nnoremap <localleader>gi :<C-u>GoImports<CR>
    vnoremap <localleader>gp :<C-u>GoPlay<CR>
    nnoremap <localleader>gr :<C-u>GoRun %<CR>
    nnoremap <localleader>gt :<C-u>GoTest<CR>
    nnoremap <localleader>gf :<C-u>GoInfo<CR>
endfunction
" 1}}}
"------------------------------------------------------------------
" [fugitive-gitlab config] {{{1
"------------------------------------------------------------------
" XXX this plugin sucks, remove it someday
let g:fugitive_gitlab_domains = ['https://git.haomaiyi.com/']
let g:gitlab_api_keys = {'gitlab.com': '', 'git.haomayi.com': '9BCk1Tn7oKrLqxedpetq'}
" 1}}}
"------------------------------------------------------------------
" [fugitive config] {{{1
"------------------------------------------------------------------
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gB :Gbrowse<CR>
" 1}}}
"------------------------------------------------------------------
" [vim-go/go dlv] {{{1
"------------------------------------------------------------------
augroup go_debug
    autocmd!
    autocmd BufNewFile,BufRead *.go :call s:GoDebugKey()
augroup END
function! s:GoDebugKey()
    nnoremap <buffer> <unique> <localleader>da :DlvToggleBreakpoint<CR>
    nnoremap <buffer> <unique> <localleader>dt :DlvTest<CR>
    nnoremap <buffer> <unique> <localleader>dd :DlvDebug<CR>
    nnoremap <buffer> <unique> <localleader>dc :DlvClearAll<CR>
endfunction
" 1}}}


