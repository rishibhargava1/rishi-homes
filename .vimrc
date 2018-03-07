filetype plugin indent on
if !exists('g:syntax_on')
  syntax enable
endif

set shiftwidth=2
set tabstop=2
set expandtab
set textwidth=90
set hlsearch
set number
set backspace=indent,eol,start
set smartindent
set autoindent
set ruler
set ignorecase

set splitright
set splitbelow

autocmd FileType java setlocal shiftwidth=4 tabstop=4

colorscheme such

" Menu Completion
set wildignorecase
set wildignore+=*/build/*
set wildignore+=*/.git/*
set wildmenu
set wildmode=list:longest,full
  
" Persistent Undo
if has('persistent_undo')
 set undodir=$HOME/.vim/undodir
 if !isdirectory(&undodir)
   call mkdir(&undodir, 'p')
 endif
 set undofile
endif

" Trim trailing whitespace
nnoremap <silent> <Leader>j
      \ :let _s=@/ <Bar>
      \ :%s/\s\+$//e <Bar>
      \ :let @/=_s <Bar>
      \ :nohl <CR>

" Trim trailing whitespace and compress empty lines
nnoremap <silent> <Leader>0
      \ :let _s=@/ <Bar>
      \ :%s/\s\+$//e <Bar>
      \ :%s/\n\{3,}/\r\r/e <Bar>
      \ :let @/=_s <Bar>
      \ :nohl <CR>

" Search for visually selected text
  vnoremap <silent> //
        \ :<C-U>
        \ let old_reg = getreg('"') <Bar> let old_regtype = getregtype('"') <CR>
        \ gvy
        \ /<C-R><C-R>=substitute(
        \ escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
        \ gV:call setreg('"', old_reg, old_regtype)<CR>
