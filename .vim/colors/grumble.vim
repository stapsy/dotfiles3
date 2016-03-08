"GRRRRUMBLE

"hi clear
set background=dark
if version > 580
	highlight clear
	if exists("syntax_on")
		syntax reset 
	endif
endif

let colors_name="grumble"

" Actual colours and styles.
				

"boring colors
hi Normal       term=NONE cterm=NONE ctermfg=15    ctermbg=NONE
hi Comment      term=NONE cterm=NONE ctermfg=8    ctermbg=NONE
hi NonText      term=NONE cterm=NONE ctermfg=0   ctermbg=NONE
hi! link LineNr          NonText
hi Error        term=NONE cterm=NONE ctermfg=0    ctermbg=1
hi ErrorMsg     term=NONE cterm=bold ctermfg=1    ctermbg=NONE
hi WarningMsg   term=NONE cterm=bold ctermfg=1    ctermbg=NONE
hi Special      term=NONE cterm=NONE ctermfg=166    ctermbg=NONE

" generic statement
hi Statement    term=NONE cterm=NONE ctermfg=1   ctermbg=NONE
hi Conditional    term=NONE cterm=NONE ctermfg=1   ctermbg=NONE
hi Repeat    term=NONE cterm=NONE ctermfg=1   ctermbg=NONE
hi Label    term=NONE cterm=NONE ctermfg=1   ctermbg=NONE
hi Exception    term=NONE cterm=NONE ctermfg=1   ctermbg=NONE

" operators
hi Operator		term=NONE cterm=BOLD ctermfg=13    ctermbg=NONE
hi Keyword		term=NONE cterm=NONE ctermfg=1    ctermbg=NONE
			

" Function name functions, print
hi Function     term=NONE cterm=BOLD ctermfg=4   ctermbg=NONE
" Variable Name s:test_test
hi Identifier   term=NONE cterm=BOLD ctermfg=248   ctermbg=NONE

" Generic preprocessor
hi PreProc      term=NONE cterm=NONE ctermfg=14    ctermbg=NONE
" Preprocessor #include
hi! link Include PreProc		
" Preprocessor #define
hi! link Define PreProc
" Same as Define
hi! link Macro PreProc
" Preprocessor #if, #else, #endif, etc.
hi! link PreCondit PreProc

" Generic constant
hi Constant     term=NONE cterm=NONE ctermfg=11   ctermbg=NONE
" Character constant: 'c', '/n'
hi! link Character Constant
" Boolean constant: TRUE, false
hi! link Boolean Constant
" number constant: 234, 0xff
hi! link Number Constant
" floating point constant: 2.3
hi! link Float Constant

" string
hi String       term=NONE cterm=NONE ctermfg=2    ctermbg=NONE
					
" Generic Type
hi Type         term=NONE cterm=NONE ctermfg=3    ctermbg=NONE
hi! link StorageClass Type
hi! link Structure Type
hi! link Typedef Type
				
"extra/test
" matching parenthesis
hi MatchParen	term=NONE cterm=NONE ctermfg=10    ctermbg=NONE

"Python
hi pythonBuiltin term=NONE cterm=NONE ctermfg=9    ctermbg=NONE

"hi! link pythonBuiltinObj Normal
"hi! link pythonBuiltinFunc Comment

highlight Cursor       term=NONE cterm=bold ctermfg=3    ctermbg=NONE
highlight CursorLine   term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE
highlight DiffAdd      term=NONE cterm=bold ctermfg=5    ctermbg=NONE
highlight DiffChange   term=NONE cterm=bold ctermfg=NONE ctermbg=NONE
highlight DiffDelete   term=NONE cterm=bold ctermfg=7    ctermbg=1
highlight DiffText     term=NONE cterm=bold ctermfg=7    ctermbg=4
highlight Directory    term=NONE cterm=bold ctermfg=4    ctermbg=0
highlight FoldColumn   term=NONE cterm=bold ctermfg=0    ctermbg=NONE
highlight Folded       term=NONE cterm=bold ctermfg=0    ctermbg=NONE
highlight IncSearch    term=NONE cterm=bold ctermfg=5    ctermbg=5
highlight Pmenu        term=NONE cterm=NONE ctermfg=0    ctermbg=7
highlight Search       term=NONE cterm=bold ctermfg=7    ctermbg=5
highlight SpecialKey   term=NONE cterm=NONE ctermfg=8    ctermbg=NONE
highlight StatusLine   term=NONE cterm=bold ctermfg=8    ctermbg=NONE
" highlight StatusLineNC term=NONE cterm=bold ctermfg=0    ctermbg=NONE
highlight TabLineSel   term=NONE cterm=bold ctermfg=7    ctermbg=NONE
highlight Todo         term=NONE cterm=bold ctermfg=7    ctermbg=1
highlight Underlined   term=underline cterm=underline ctermfg=NONE   ctermbg=NONE
highlight VertSplit    term=NONE cterm=bold ctermfg=0    ctermbg=NONE
highlight Visual       term=NONE cterm=NONE ctermfg=0    ctermbg=7
									" General highlighting group links.
highlight! link diffAdded       DiffAdd
highlight! link diffRemoved     DiffDelete
highlight! link diffChanged     DiffChange
highlight! link StatusLineNC    StatusLine
highlight! link Title           Normal
highlight! link MoreMsg         Normal
highlight! link Question        DiffChange
highlight! link TabLine         StatusLineNC
highlight! link TabLineFill     StatusLineNC
highlight! link VimHiGroup      VimGroup
