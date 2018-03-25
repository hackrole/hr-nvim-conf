if exists("b:current_syntax")
    finish
endif

echom "our syntax highlighting code will go here."

let b:current_syntax = "puml"
syntax keyword pumlKeyword @start @end
syntax keyword pumlKeyword newpage
syntax keyword pumlKeyword actor boundary control entity database
syntax keyword pumlKeyword alt else opt loop par break critical group
highlight link pumlKeyword Keyword
