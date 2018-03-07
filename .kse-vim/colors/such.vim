highlight clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = 'such'

set background=dark

"          Group         cterm            ctermfg      ctermbg
highlight  ColorColumn                                 ctermbg=236
highlight  Comment                        ctermfg=245
highlight  Conditional                    ctermfg=250
highlight  Constant                       ctermfg=173
highlight  CursorColumn                                ctermbg=236
highlight  CursorLine                                  ctermbg=236
highlight  Define                         ctermfg=139
highlight  DiffAdd                                     ctermbg=058
highlight  DiffChange                                  ctermbg=024
highlight  DiffDelete                     ctermfg=235  ctermbg=167
highlight  DiffText      cterm=bold       ctermfg=235  ctermbg=109
highlight  Directory                      ctermfg=109
highlight  FoldColumn                     ctermfg=004  ctermbg=235
highlight  Folded                         ctermfg=245  ctermbg=235
highlight  Function                       ctermfg=109
highlight  Identifier                     ctermfg=167
highlight  Ignore                         ctermfg=15
highlight  Include                        ctermfg=109
highlight  Keyword                        ctermfg=173
highlight  LineNr                         ctermfg=239
highlight  MatchParen                                  ctermbg=239
highlight  ModeMsg       cterm=bold       ctermfg=143
highlight  MoreMsg                        ctermfg=143
highlight  NonText                        ctermfg=239
highlight  Normal                         ctermfg=250  ctermbg=235
highlight  Operator                       ctermfg=109
highlight  Pmenu                          ctermfg=250  ctermbg=239
highlight  PmenuSbar                                   ctermbg=248
highlight  PmenuSel      cterm=reverse    ctermfg=250  ctermbg=239
highlight  PmenuThumb                                  ctermbg=15
highlight  PreProc                        ctermfg=139
highlight  Question                       ctermfg=143
highlight  Repeat                         ctermfg=250
highlight  Search                         ctermfg=235  ctermbg=222
highlight  SignColumn                     ctermfg=004  ctermbg=235
highlight  Special                        ctermfg=250
highlight  SpecialKey                     ctermfg=239
highlight  SpellBad      cterm=underline  ctermfg=009  ctermbg=none
highlight  SpellCap      cterm=underline  ctermfg=024  ctermbg=none
highlight  Statement                      ctermfg=167
highlight  StatusLine                     ctermfg=236  ctermbg=109
highlight  StatusLineNC  cterm=reverse    ctermfg=109  ctermbg=236
highlight  String                         ctermfg=143
highlight  Structure                      ctermfg=139
highlight  TabLine       cterm=reverse    ctermfg=240  ctermbg=250
highlight  TabLineFill   cterm=reverse    ctermfg=240  ctermbg=250
highlight  Title                          ctermfg=245
highlight  Todo                           ctermfg=245  ctermbg=235
highlight  Type                           ctermfg=109
highlight  VertSplit                      ctermfg=240  ctermbg=240
highlight  Visual                                      ctermbg=239
highlight  WarningMsg                     ctermfg=167
highlight  WildMenu     cterm=reverse     ctermfg=109  ctermbg=236

highlight  diffAdded    ctermfg=143
highlight  diffRemoved  ctermfg=167

highlight  gitcommitSummary  cterm=bold

highlight  htmlArg        ctermfg=167
highlight  htmlScriptTag  ctermfg=167
highlight  htmlTag        ctermfg=167
highlight  htmlTagName    ctermfg=167

highlight  javaScriptBraces       ctermfg=250
highlight  javaScriptConditional  ctermfg=139
highlight  javaScriptFunction     ctermfg=139
highlight  javaScriptMember       ctermfg=173
highlight  javaScriptNumber       ctermfg=173
highlight  javaScriptRepeat       ctermfg=139
highlight  javascriptGlobal       ctermfg=109
highlight  javascriptNull         ctermfg=173
highlight  javascriptStatement    ctermfg=167

highlight  pythonConditional  ctermfg=139
highlight  pythonExClass      ctermfg=173
highlight  pythonException    ctermfg=139
highlight  pythonFunction     ctermfg=109
highlight  pythonInclude      ctermfg=139
highlight  pythonPreCondit    ctermfg=139
highlight  pythonRepeat       ctermfg=109
highlight  pythonRepeat       ctermfg=109
highlight  pythonStatement    ctermfg=139

highlight  rubyAccess                  ctermfg=222
highlight  rubyAttribute               ctermfg=109
highlight  rubyConditional             ctermfg=139
highlight  rubyConstant                ctermfg=222
highlight  rubyControl                 ctermfg=139
highlight  rubyCurlyBlock              ctermfg=173
highlight  rubyException               ctermfg=139
highlight  rubyInclude                 ctermfg=109
highlight  rubyInterpolationDelimiter  ctermfg=173
highlight  rubyLocalVariableOrMethod   ctermfg=173
highlight  rubyRepeat                  ctermfg=139
highlight  rubyStringDelimiter         ctermfg=143
highlight  rubySymbol                  ctermfg=143

highlight  vimCommand  ctermfg=167
