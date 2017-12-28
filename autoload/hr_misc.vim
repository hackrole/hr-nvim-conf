" ------------------------------------------------------------------------
" File: function.vim
" Author: hackrole
" Email: daipeng123456@gmail.com
" Description: 用于存放定义函数，不应该包含执行代码，
"        考虑从main.vim中移除，添加到command.vim或其他
" Last Modified: 2013-07-02
" -------------------------------------------------------------------------

" --------------------------------------------------
" [空格与制表切换] {{{1
" --------------------------------------------------
" TODO: 切换到command.vim
fu! ToggleTab(t)
    if a:t == 'tab'
        setl noet
        ret!
    elsei a:t == 'space'
        setl et
        ret
    en
endf
com! -nargs=0 ToSpace call ToggleTab('space')
com! -nargs=0 ToTab call ToggleTab('tab')
" 1}}}
" -----------------------------------------------------
" [ gvim 启动窗口大小] {{{1
" -----------------------------------------------------
" TODO: 移位 ??
" TODO: 第二窗口优化大小,位置
fu! Winpossize(t)
	if a:t == 'l'
		winpos 961 24
		set lines=53 columns=120
		return
	elseif a:t == 'r'
		winpos 1 24
		set lines=53 columns=119
		return
	elseif a:t == 'f'
		winpos 0 24
		set lines=55 columns=239
		return
	en
endf
command! -nargs=1 Position call Winpossize(<f-args>)
"1}}}
" --------------------------------------------------------
" [ 设置tab宽度 ] {{{1
" --------------------------------------------------------
" TODO: 移动到 command.vim
function! Settabwidth(t)
	if !empty(a:t)
		let s = a:t
		exec "set tabstop=".s
		exec "set shiftwidth=".s
		exec "set softtabstop=".s
		exec "set et"
	else
		throw "require a num"
		return
	endif
endfunction
"1}}}
command! -nargs=1 Settab  call Settabwidth(<f-args>)
" vim:fdm=marker:fdc=1

