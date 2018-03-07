setlocal commentstring=#\ %s
setlocal shiftwidth=4

function! FindBrazilPackage() abort
  if !has('file_in_path') || !has('path_extra')
    return 0
  endif

  let l:workspaces = []

  let l:packageInfo = findfile('packageInfo', '.;')
  if !empty(l:packageInfo)
    call add(l:workspaces, fnamemodify(l:packageInfo, ':p:h'))
  endif

  let l:workplace = '/workplace/' . $USER
  if !empty($BRAZIL_WORKPLACE)
    let l:workplace = $BRAZIL_WORKPLACE
  endif

  if isdirectory(l:workplace)
    if !empty($BRAZIL_DEFAULT_WORKSPACE)
      call add(l:workspaces, l:workplace . '/' . $BRAZIL_DEFAULT_WORKSPACE)
    endif

    call add(l:workspaces, l:workplace . '/*')
  endif

  for l:workspace in l:workspaces
    let l:package = finddir(expand('<cword>'), l:workspace . '/src')
    if !empty(l:package)
      execute 'edit' l:package
      return 1
    endif
  endfor

  return 0
endfunction

nnoremap <silent> gf :call FindBrazilPackage()<CR>
