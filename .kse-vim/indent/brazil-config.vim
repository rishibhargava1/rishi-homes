" Only load this indent file when no other was loaded.
if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

" The # comment symbol shouldn't go to the first column
setlocal indentkeys-=0#
setlocal cino+=#1

" Set the function to do the work.
setlocal indentexpr=GetBrazilConfigIndent()

function! GetBrazilConfigIndent()
  return cindent(v:lnum)
endfunction
