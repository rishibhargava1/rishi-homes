fun! s:DetectEnvrootRuby()
  if getline(1) == '#!/apollo/sbin/envroot "$ENVROOT/ruby2.1.x/bin/ruby"'
    set filetype=ruby
  endif
  if getline(1) == '#!/apollo/sbin/envroot "$ENVROOT/ruby2.3.x/bin/ruby"'
    set filetype=ruby
  endif
endfun

autocmd BufNewFile,BufRead * call s:DetectEnvrootRuby()
