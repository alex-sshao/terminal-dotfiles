" Vim color file
" Maintainer:   Gerald S. Williams
" Last Change:  2007 Jun 13
"
" This is merely a combination of PapayaWhip and ChocolateLiquor, which
" started out as light and dark versions of each other anyway.

let s:ChocolatePapaya_style = &background
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "CP"

" Highlighting function
fun <sid>hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
  if a:guisp != ""
    exec "hi " . a:group . " guisp=#" . a:guisp
  endif
endfun

" Foreground gui
let s:fggui = "3F1F1F"
" Background gui (actually matters for no highlight)
let s:bggui = "1F0F0F"
" Foreground Cterm
let s:fgct = "52"
" Background Cterm
let s:bgct = "88"



"Gitgutter
call <sid>hi("SignColumn", s:fggui, s:bggui, s:fgct, s:bgct, "", "")
call <sid>hi("VertSplit", s:fggui, s:bggui, s:fgct, s:bgct, "", "")
call <sid>hi("foldcolumn", s:fggui, s:bggui, s:fgct, s:bgct, "", "")
highlight VertSplit cterm=NONE
highlight foldcolumn cterm=NONE

if s:ChocolatePapaya_style == 'light'
    hi Normal guifg=#3f1f1f guibg=PapayaWhip ctermbg=Gray ctermfg=Black
    hi NonText guibg=Moccasin guifg=Brown ctermfg=Brown
    hi LineNr guibg=Moccasin
    hi DiffDelete guibg=LightRed guifg=Black ctermbg=DarkRed ctermfg=White
    hi DiffAdd guibg=LightGreen ctermbg=DarkGreen ctermfg=White
    hi DiffChange guibg=LightCyan3 ctermbg=DarkCyan ctermfg=White
    hi DiffText gui=NONE guibg=Gray80 ctermbg=DarkCyan ctermfg=Yellow
    hi Comment guifg=MediumBlue
    hi Constant guifg=DeepPink
    hi PreProc guifg=DarkMagenta
    hi StatusLine guibg=White guifg=#5f3705 cterm=bold ctermbg=Brown ctermfg=White
    hi StatusLineNC gui=None guibg=Gray
    hi VertSplit gui=None guibg=Gray
    hi Identifier guifg=#005f5f
    hi Statement ctermfg=DarkRed
    hi MatchParen guibg=burlywood
else
    hi Normal guibg=#3f1f1f guifg=PapayaWhip ctermfg=White
    hi NonText guibg=#1f0f0f guifg=Brown2 ctermfg=Brown ctermbg=Black
    hi LineNr guibg=#1f0f0f guifg=Brown2
    hi DiffDelete guibg=DarkRed guifg=White ctermbg=DarkRed ctermfg=White
    hi DiffAdd guibg=DarkGreen guifg=White ctermbg=DarkGreen ctermfg=White
    hi DiffText gui=NONE guibg=DarkCyan guifg=Yellow ctermbg=DarkCyan ctermfg=Yellow
    hi DiffChange guibg=DarkCyan guifg=White ctermbg=DarkCyan ctermfg=White
    hi Constant ctermfg=Red
    hi Comment guifg=LightBlue3
    hi PreProc guifg=Plum ctermfg=Magenta
    hi StatusLine guibg=White guifg=Sienna4 cterm=NONE ctermfg=Black ctermbg=Brown
    hi StatusLineNC gui=NONE guifg=Black guibg=Gray ctermbg=Black ctermfg=Gray
    hi VertSplit guifg=Gray
    hi Search guibg=Gold3 ctermfg=Blue
    hi Type gui=NONE guifg=DarkSeaGreen2
    hi Statement gui=NONE guifg=Gold3
    hi FoldColumn guibg=#1f0f0f ctermfg=Cyan ctermbg=Black
    hi Folded guibg=grey20 ctermfg=Cyan ctermbg=Black
endif
