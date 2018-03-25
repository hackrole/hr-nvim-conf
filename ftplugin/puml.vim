if !exists("g:puml_command")
    let g:puml_command = "/Users/daipeng/.virtualenvs/crunch2.7-env/bin/python -m plantuml"
endif

function! PumlCompile()
    silent !clear
    execute "!" . g:puml_command . " " . bufname("%")
endfunction

function! PumlOpenPng()
    silent !clear
    let name = expand("%:r") . ".png"
    execute "!open " . name
endfunction

nnoremap <buffer> <localleader>r :call PumlCompile()<CR>
nnoremap <buffer> <localleader>o :call PumlOpenPng()<CR>
