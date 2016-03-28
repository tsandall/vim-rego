" Vim syntax file
" Language: Opalog (http://github.com/open-policy-agent/opa)
" Maintainers: Torin Sandall <torinsandall@gmail.com>

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syn case match

" language keywords
syn keyword opaKeyword package import as

" comments
syn match opaComment "#.*$" contains=opaTodo,@Spell
syn keyword opaTodo FIXME XXX TODO contained

" data types
syn keyword opaNull null
syn keyword opaBoolean true false
syn match opaNumber "\<\(0[0-7]*\|0[xx]\x\+\|\d\+\)[ll]\=\>"
syn match opaNumber "\(\<\d\+\.\d*\|\.\d\+\)\([ee][-+]\=\d\+\)\=[ffdd]\="
syn match opaNumber "\<\d\+[ee][-+]\=\d\+[ffdd]\=\>"
syn match opaNumber "\<\d\+\([ee][-+]\=\d\+\)\=[ffdd]\>"
syn region opaString start="\"[^"]" skip="\\\"" end="\"" contains=opaStringEscape
syn match opaStringEscape "\\u[0-9a-fA-F]\{4}" contained
syn match opaStringEscape "\\[nrfvb\\\"]" contained

" rule head 
syn match opaRuleName "^\w\+" nextgroup=opaRuleKey,opaRuleValue skipwhite
syn region opaRuleKey start="\[" end="\]" contained skipwhite
syn match opaRuleValue "=\w\+" nextgroup=opaIfThen skipwhite

" operators
syn match opaIfThen ":-"
syn match opaEquality "="
syn match opaInequality "[<>!]"

" highlighting
hi link opaKeyword Keyword
hi link opaNull Function
hi link opaBoolean Boolean
hi link opaNumber Number
hi link opaString String
hi link opaRuleName Function
hi link opaRuleKey Normal
hi link opaRuleValue Normal
hi link opaIfThen Keyword
hi link opaEquality Keyword
hi link opaInequality Keyword
hi link opaComment Comment
hi link opaTodo Todo
