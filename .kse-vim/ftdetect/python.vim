fun! s:DetectEnvrootPython()
  if getline(1) == '#!/apollo/sbin/envroot "$ENVROOT/bin/python"'
    set filetype=python
  endif
endfun

autocmd BufNewFile,BufRead * call s:DetectEnvrootPython()
