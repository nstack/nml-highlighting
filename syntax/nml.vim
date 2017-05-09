" Vim syntax file
" Language: NStack module language (.nml)
" Maintainer: Nick Pollard
" Latest Revision: 8 May 2017

if exists("b:current_syntax")
  finish
endif

syn keyword basicLanguageKeywords def fun type
syn keyword basicLanguageKeywords concat filter
syn keyword importKeywords import module as

syn keyword primitiveTypes Integer Double Boolean Byte Text

syn match nmlOperator "="
syn match nmlOperator "|"

syn match nmlString '"[^"]*"'
syn match nmlType "<[A-Za-z_0-9\[\]\(\)\{\} :]*>"

syn keyword nmlTodo contained TODO FIXME NOTE
syn match singleLineComment "//.*$" contains=nmlTodo

syn region multiLineComment start="/\*" end="\*/" contains=nmlTodo
syn match nmlModule "\<[A-Z][A-Za-z0-9_]*"

let b:current_syntax = "nml"

hi def link nmlTodo Todo
hi def link singleLineComment Comment
hi def link multiLineComment Comment
hi def link nmlString Constant
hi def link nmlType Type
hi def link primitiveTypes Type
hi def link nmlModule Identifier
hi def link basicLanguageKeywords Statement
hi def link importKeywords Type
hi def link nmlOperator Operator
