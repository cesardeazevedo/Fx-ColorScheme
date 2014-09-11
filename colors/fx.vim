"          _____                                  
"         /\    \                 ______          
"        /::\    \               |::|   |         
"       /::::\    \              |::|   |         
"      /::::::\    \             |::|   |         
"     /:::/\:::\    \            |::|   |         
"    /:::/__\:::\    \           |::|   |         
"   /::::\   \:::\    \          |::|   |         
"  /::::::\   \:::\    \         |::|   |         
" /:::/\:::\   \:::\    \  ______|::|___|___ ____ 
" :::/  \:::\   \:::\____\|:::::::::::::::::|    |
" ::/    \:::\   \::/    /|:::::::::::::::::|____|
" \/____/ \:::\   \/____/  ~~~~~~|::|~~~|~~~      
"          \:::\    \            |::|   |         
"           \:::\____\           |::|   |         
"            \::/    /           |::|   |         
"             \/____/            |::|   |         
"                                |::|   |         
"                                |::|   |         
"                                |::|___|         
"                                 ~~              
" Name:    Fx ColorScheme
" Author:  Cesar Augusto D. Azevedo <cesardeazevedo@outlook.com>
" Github:  http://github.com/cesardeazevedo/Fx-ColorScheme
" License: MIT
" Version: 0.1

set background=dark

"Initialize Colorschemes "{{{
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "fx"
" }}}

" Palette Colors" {{{

let s:palette = {
    \ 'base'      : ["#202020", 233 ],
    \ 'base2'     : ["#303030", 234 ],
    \ 'black'     : ["#000000", 232 ],
    \ 'red'       : ["#f40065", 197 ],
    \ 'red2'      : ["#ff0000", 9   ],
    \ 'pink'      : ["#f45295", 9   ],
    \ 'orange'    : ["#ed9e26", 214 ],
    \ 'purple'    : ["#7100ff", 99  ],
    \ 'purple2'   : ["#5f00d7", 56  ],
    \ 'cyan'      : ["#8fa7df", 81  ],
    \ 'green'     : ["#a5ff0b", 154 ],
    \ 'gray'      : ["#606060", 241 ],
    \ 'grayLine'  : ["#121212", 232 ],
    \ 'white'     : ["#e7e7e7", 231 ],
    \ }

if has("gui_running")

    " set font options 
    call g:SetFont()
 
    let s:term      = " gui"
    let s:none      = " gui=NONE"
    let s:bold      = " gui=BOLD"
    let s:italic    = " gui=ITALIC"
    let s:bgNone    = " guibg=NONE"
    let s:base      = s:palette['base'][0]
    let s:base2     = s:palette['base2'][0]
    let s:black     = s:palette['black'][0]
    let s:red       = s:palette['red'][0]
    let s:red2      = s:palette['red2'][0]
    let s:pink      = s:palette['pink'][0]
    let s:orange    = s:palette['orange'][0]
    let s:purple    = s:palette['purple'][0]
    let s:purple2   = s:palette['purple2'][0]
    let s:cyan      = s:palette['cyan'][0]
    let s:green     = s:palette['green'][0]
    let s:gray      = s:palette['gray'][0]
    let s:grayLine  = s:palette['grayLine'][0]
    let s:white     = s:palette['white'][0]

else
    let s:term      = " cterm"
    let s:none      = " cterm=NONE"
    let s:bold      = " cterm=BOLD"
    let s:italic    = " cterm=ITALIC"
    let s:bgNone    = " ctermbg=NONE"
    let s:base      = s:palette['base'][1]
    let s:base2     = s:palette['base2'][1]
    let s:black     = s:palette['black'][1]
    let s:red       = s:palette['red'][1]
    let s:red2      = s:palette['red2'][1]
    let s:pink      = s:palette['pink'][1]
    let s:orange    = s:palette['orange'][1]
    let s:purple    = s:palette['purple'][1]
    let s:purple2   = s:palette['purple2'][1]
    let s:cyan      = s:palette['cyan'][1]
    let s:green     = s:palette['green'][1]
    let s:gray      = s:palette['gray'][1]
    let s:grayLine  = s:palette['grayLine'][1]
    let s:white     = s:palette['white'][1]
endif

let s:n = "NONE"

" }}}

" Set Fontsize " {{{

function! g:SetFont()
    if has("macunix")
        set guifont=Monaco:h14
    elseif has("unix")
        set guifont=Monaco\ Medium\ 12
    endif
endfunction


function! g:getColor(color, term)
    return a:term == "gui" ? s:palette[a:color][0] : s:palette[a:color][1]
endfunction

"}}}

" Basic Configuration "{{{
" ----------------------------------------------------------

exe "hi! Normal"       .s:term."fg="  .s:white   .s:none   .s:term."bg="   .s:base
"       *Normal         normal text and baseground

exe "hi! Cursor"       .s:term."fg="  .s:white   .s:none   .s:term."bg="   .s:purple2
"       *Cursor         the character under the cursor

exe "hi! CursorLine"   .s:none        .s:term    ."bg="    .s:grayLine
"       *CursorLine     the screen line that the cursor is in when 'cursorline' is set

exe "hi! CursorLineNr" .s:term."fg="  .s:purple2 .s:bold   .s:term."bg="   .s:white 

exe "hi! LineNr"       .s:term."fg="  .s:gray    .s:none   .s:term."bg="   .s:grayLine
"       *LineNr         Line number for ':number' and ':#' commands, and when 'number' or 'relativenumber' option is set.

exe "hi! Comment"      .s:term."fg="  .s:gray    .s:none   .s:bgNone
"       *Comment        any comment

exe "hi! Constant"     .s:term."fg="  .s:green   .s:none   .s:bgNone
"       *Constant       any constant
"        String         a string constant: 'this is a string'
"        Character      a character constant: 'c', '\n'
"        Number         a number constant: 234, 0xff
"        Boolean        a boolean constant: TRUE, false
"        Float          a floating point constant: 2.3e10

exe "hi! Identifier"   .s:term."fg="  .s:orange  .s:none   .s:bgNone
"       *Identifier     any variable name
"        Function       function name (also: methods for classes)

exe "hi! Statement"    .s:term."fg="  .s:red     .s:none   .s:bgNone
"       *Statement      any statement
"        Conditional    if, then, else, endif, switch, etc.
"        Repeat         for, do, while, etc.
"        Label          case, default, etc.
"        Operator       'sizeof', '+', '*', etc.
"        Keyword        any other keyword
"        Exception      try, catch, throw

exe "hi! Operator"     .s:term."fg="  .s:white   .s:none   .s:bgNone
"        Operator      'sizeof', '+', '*', etc.

exe "hi! PreProc"      .s:term."fg="  .s:purple  .s:none   .s:bgNone
"       *PreProc        generic Preprocessor
"        Include        preprocessor #include
"        Define         preprocessor #define
"        Macro          same as Define
"        PreCondit      preprocessor #if, #else, #endif, etc.

exe "hi! Type"         .s:term."fg="  .s:purple  .s:none   .s:bgNone
"       *Type           int, long, char, etc.
"        StorageClass   static, register, volatile, etc.
"        Structure      struct, union, enum, etc.
"        Typedef        A typedef

exe "hi! Special"      .s:term."fg="  .s:gray    .s:none   .s:bgNone
"       *Special        any special symbol
"        SpecialChar    special character in a constant
"        Tag            you can use CTRL-] on this
"        Delimiter	    character that needs attention
"        SpecialComment special things inside a comment
"        Debug	        debugging statements

exe "hi! Underlined"   .s:term."fg="  .s:orange  .s:none   .s:bgNone
"       *Underlined	    text that stands out, HTML links

exe "hi! Ignore"       .s:none        .s:bgNone
"       *Underlined	    text that stands out, HTML links 

exe "hi! Error"        .s:term."fg="  .s:white   .s:none   .s:term."bg="    .s:red2 
"       *Error	        any erroneous construct

exe "hi! Todo"         .s:term."fg="  .s:black   .s:none   .s:term."bg="    .s:orange
"       *Todo	        anything that needs extra attention; mostly the
"                       keywords TODO FIXME and XXX

exe "hi! String"       .s:term."fg="  .s:orange  .s:none   .s:bgNone
"       *String         a string constant: "this is a string"

exe "hi! SpecialKey"   .s:term."fg="  .s:gray    .s:none   .s:bgNone
"       *SpecialKey     Meta and special keys listed with ":map", also for text used
"                       to show unprintable characters in the text, 'listchars'.
"                       Generally: text that is displayed differently from what it
"                       really is.

exe "hi! link ErrorMsg Error"
"            *ErrorMsg error messages on the command line

exe "hi! VertSplit"    .s:term."fg="  .s:white   .s:none   .s:term."bg="   .s:white
"       *VertSplit      the column separating vertically split windows

exe "hi! StatusLine"   .s:term."fg="  .s:purple2 .s:none   .s:term."bg="   .s:black
"       *StatusLine     status line of current window (Overrited by Airline plugin, see Fx-AirlineTheme.vim)

exe "hi! StatusLineNC" .s:term."fg="  .s:white   .s:none   .s:term."bg="   .s:purple2
"       *StatusLineNC   status lines of not-current windows
"                       Note: if this is equal to 'StatusLine' Vim will use '^^^' in
"                       the status line of the current window.

exe "hi! CursorColumn" .s:term."fg="  .s:white   .s:none   .s:bgNone
"       *CursorColumn   the screen column that the cursor is in when 'cursorcolumn' is set

exe "hi! Directory"    .s:term."fg="  .s:red     .s:none   .s:bgNone
"       *Directory      directory names (and other special names in listings)
"
exe "hi! Title"        .s:term."fg="  .s:white   .s:none   .s:bgNone
"       *Title          titles for output from ':set all', ':autocmd' etc.

exe "hi! Search"       .s:term."fg="  .s:black   .s:none   .s:term."bg="    .s:green
"       *Search         Last search pattern highlighting (see 'hlsearch').
"                       Also used for highlighting the current line in the quickfix
"                       window and similar items that need to stand out.

exe "hi! IncSearch"    .s:term."fg="  .s:purple2 .s:none   .s:term."bg="    .s:white
"       *IncSearch      incsearch' highlighting; also used for the text replaced with ':s///c'

exe "hi! Visual"       .s:term."fg="  .s:n       .s:bold   .s:term."bg="    .s:base2
"       *Visual         Visual mode selection
"}}}

" Tab (replaced by Airline plugin) " {{{
exe "hi! TabLine"      .s:term."fg="  .s:black   .s:none   .s:term."bg="   .s:white
"       *TabLine        tab pages line, not active tab page label

exe "hi! TabLineFill"  .s:term."fg="  .s:black   .s:none   .s:term."bg="   .s:white
"       *TabLineFill    tab pages line, where there are no labels

exe "hi! TabLineSel"   .s:term."fg="  .s:gray    .s:none   .s:bgNone
"       *TabLineSel     tab pages line, active tab page label
" }}}

" Folding " {{{
exe "hi! Folded"       .s:term."fg="  .s:white   .s:none   .s:bgNone
"       *Folded         line used for closed folds

exe "hi! FoldColumn"   .s:term."fg="  .s:white   .s:none   .s:bgNone
"       *FoldColumn     foldcolumn
" }}}

" Tabs " {{{
exe "hi! TabLine"      .s:term."fg="  .s:white   .s:bold   .s:term."bg="   .s:purple2
"       *TabLine        tab pages line, not active tab page label

exe "hi! TabLineFill"  .s:term."fg="  .s:white   .s:bold   .s:term."bg="   .s:purple2
"       *TabLineFill    tab pages line, where there are no labels

exe "hi! TabLineSel"   .s:term."fg="  .s:white   .s:bold   .s:term."bg="   .s:purple2
"       *TabLineSel     tab pages line, active tab page label
"}}}

" AutoComplete "{{{
"
exe "hi! Pmenu"        .s:term."fg="  .s:white   .s:none   .s:term."bg="   .s:base2
"       *Pmenu          Popup menu: normal item.

exe "hi! PmenuSel"     .s:term."fg="  .s:white   .s:none   .s:term."bg="   .s:purple2
"       *PmenuSel       Popup menu: selected item.

exe "hi! PmenuSbar"    .s:term."fg="  .s:n       .s:none   .s:term."bg="   .s:white
"       *PmenuSbar      Popup menu: scrollbar.

exe "hi! PmenuThumb"   .s:term."fg="  .s:n       .s:none   .s:term."bg="   .s:red
"        PmenuThumb     Popup menu: Thumb of the scrollbar.
" }}}

" Html Tags "{{{
exe "hi! htmlTag"             .s:term."fg="      .s:white  .s:none         .s:bgNone
exe "hi! htmlTagName"         .s:term."fg="      .s:red    .s:none         .s:bgNone
exe "hi! htmlSpecialTagName"  .s:term."fg="      .s:red    .s:none         .s:bgNone
exe "hi! htmlEndTag"          .s:term."fg="      .s:white  .s:none         .s:bgNone
"}}}

" Ruby "{{{
"
exe "hi! link rubyDefine        Keyword"

exe "hi! link rubyClass         Keyword"

exe "hi! link rubyKeyword       Keyword"

exe "hi! link rubyIdentifier    Identifier"

exe "hi! link rubyConstant      Type"

exe "hi! link rubyOperator      Operator"

exe "hi! link rubyConstant      Constant"

exe "hi! link rubyClassVariable Keyword"

"}}}

"

