" ┏━┓╻ ╻┏┓ ╻  ┏━┓╻ ╻   ╻ ╻╻┏┳┓
" ┗━┓┣━┫┣┻┓┃  ┣━┫┣━┫   ┃┏┛┃┃┃┃
" ┗━┛╹ ╹┗━┛┗━╸╹ ╹╹ ╹ ╹ ┗┛ ╹╹ ╹
"                           -- by z3bra
" =====================================
"" A 16 colors scheme that use your terminal colors

set background=dark
	if exists("g:syntax_on")
		syntax reset
			endif
			let g:colors_name="shblah"

				" Actual colours and styles.

				"boring colors
				hi Normal       term=NONE cterm=NONE ctermfg=15    ctermbg=NONE
				hi Comment      term=NONE cterm=NONE ctermfg=8    ctermbg=NONE
				hi NonText      term=NONE cterm=NONE ctermfg=237    ctermbg=NONE
				hi! link LineNr          NonText
				hi Error        term=NONE cterm=NONE ctermfg=0    ctermbg=1
				hi ErrorMsg     term=NONE cterm=bold ctermfg=1    ctermbg=NONE
				hi WarningMsg   term=NONE cterm=bold ctermfg=3    ctermbg=NONE
				hi Special      term=NONE cterm=NONE ctermfg=10    ctermbg=NONE

				" generic statement
				hi Statement    term=NONE cterm=NONE ctermfg=1   ctermbg=NONE
				" if, then, else, endif, switch, etc
				hi Conditional    term=NONE cterm=NONE ctermfg=1   ctermbg=NONE
				" for, do, while, etc
				hi Repeat    term=NONE cterm=NONE ctermfg=1   ctermbg=NONE
				" case, default, etc
				hi Label    term=NONE cterm=NONE ctermfg=1   ctermbg=NONE
				" try, catch, throw
				hi Exception    term=NONE cterm=NONE ctermfg=1   ctermbg=NONE
				" operators
				hi Operator		term=NONE cterm=NONE ctermfg=1    ctermbg=NONE
				" other keyword
				hi Keyword		term=NONE cterm=NONE ctermfg=1    ctermbg=NONE
			
				" Variable Name
				hi Identifier   term=NONE cterm=NONE ctermfg=4    ctermbg=NONE
				" Function name
				hi Function     term=NONE cterm=NONE ctermfg=14    ctermbg=NONE

				" Generic preprocessor
				hi PreProc      term=NONE cterm=NONE ctermfg=6    ctermbg=NONE
				" Preprocessor #include
				hi! link Include PreProc		
				" Preprocessor #define
				hi! link Define PreProc
				" Same as Define
				hi! link Macro PreProc
				" Preprocessor #if, #else, #endif, etc.
				hi! link PreCondit PreProc

				" Generic constant
				hi Constant     term=NONE cterm=NONE ctermfg=5    ctermbg=NONE
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
				" static, register, volatile, etc
				hi! link StorageClass Type
				" struct, union, enum, etc.
				hi! link Structure Type
				" typedef
				hi! link Typedef Type
				
				"extra/test
				" matching parenthesis
				hi MatchParen	term=NONE cterm=NONE ctermfg=10    ctermbg=NONE


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
									" Test the actual colorscheme
									syn match Comment      "\"__Comment.*"
									syn match Constant     "\"__Constant.*"
									syn match Cursor       "\"__Cursor.*"
									syn match CursorLine   "\"__CursorLine.*"
									syn match DiffAdd      "\"__DiffAdd.*"
									syn match DiffChange   "\"__DiffChange.*"
									syn match DiffText     "\"__DiffText.*"
									syn match DiffDelete   "\"__DiffDelete.*"
									syn match Folded       "\"__Folded.*"
									syn match Function     "\"__Function.*"
									syn match Identifier   "\"__Identifier.*"
									syn match IncSearch    "\"__IncSearch.*"
									syn match NonText      "\"__NonText.*"
									syn match Normal       "\"__Normal.*"
									syn match Pmenu        "\"__Pmenu.*"
									syn match PreProc      "\"__PreProc.*"
									syn match Search       "\"__Search.*"
									syn match Special      "\"__Special.*"
									syn match SpecialKey   "\"__SpecialKey.*"
									syn match Statement    "\"__Statement.*"
									syn match StatusLine   "\"__StatusLine.*"
									syn match StatusLineNC "\"__StatusLineNC.*"
									syn match String       "\"__String.*"
									syn match Todo         "\"__Todo.*"
									syn match Type         "\"__Type.*"
									syn match Underlined   "\"__Underlined.*"
									syn match VertSplit    "\"__VertSplit.*"
									syn match Visual       "\"__Visual.*"

									"__Comment              /* this is a comment */
									"__Constant             var = SHBLAH
									"__Cursor               char under the cursor?
									"__CursorLine           Line where the cursor is
									"__DiffAdd              +line added from file.orig
									"__DiffChange           line changed from file.orig
									"__DiffText             actual changes on this line
									"__DiffDelete           -line removed from file.orig
									"__Folded               +--- 1 line : Folded line ---
									"__Function             function sblah()
									"__Identifier           Never ran into that actually...
									"__IncSearch            Next search term
									"__NonText              This is not a text, move on
									"__Normal               Typical text goes like this
									"__Pmenu                Currently selected menu item
									"__PreProc              #define SHBLAH true
									"__Search               This is what you're searching for
									"__Special              true false NULL SIGTERM
									"__SpecialKey           Never ran into that either
									"__Statement            if else return for switch
									"__StatusLine           Statusline of current windows
									"__StatusLineNC         Statusline of other windows
									"__String               "Hello, World!"
									"__Todo                 TODO: remove todos from source
									"__Type                 int float char void unsigned uint32_t
									"__Underlined           Anything underlined
									"__VertSplit            :vsplit will only show ' | '
									"__Visual               Selected text looks like this
									
