autocmd BufRead,BufNewFile *.rego set filetype=rego

" Use # as a comment prefix
setlocal comments=b:#,fb:-
setlocal commentstring=#\ %s
