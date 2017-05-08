" Vim syntax file
" Language: NStack module language (.nml)
" Maintainer: Nick Pollard
" Latest Revision: 8 May 2017

if exists("b:current_syntax")
  finish
endif

syn keyword basicLanguageKeywords def fun 
syn keyword basicLanguageKeywords concat filter
syn keyword importKeywords import module as 

syn match nmlOperator "="
syn match nmlOperator "|"
"syn match nmlOperator "{"
"syn match nmlOperator "}"

syn match nmlType "<[A-Z][A-Za-z_0-9]*>"

"syn region configBlock start="{" end="}" fold transparent contains=strings

syn keyword nmlTodo contained TODO FIXME NOTE
syn match singleLineComment "--.*$" contains=nmlTodo

syn match nmlString '"[^"]*"'
syn region multiLineComment start="/\*" end="\*/" contains=nmlTodo
syn match nmlModule "\<[A-Z][A-Za-z0-9_]*"

let b:current_syntax = "nml"

hi def link nmlTodo Todo
hi def link singleLineComment Comment
hi def link multiLineComment Comment
hi def link nmlString Constant
hi def link nmlType Type
hi def link nmlModule Identifier
hi def link basicLanguageKeywords Statement
hi def link importKeywords Type
hi def link nmlOperator Operator
