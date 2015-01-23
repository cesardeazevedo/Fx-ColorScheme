" Fx for Airline plugin
let g:airline#themes#fx#palette = {}

" Normal Mode "{{{

" White 
let s:white = ["#ffffff", 231]

let s:N1  =  [ s:white[0] , g:GetColor('purple2', "gui"),
             \ s:white[1] , g:GetColor('purple2', "cterm")]

let s:N2  =  [ g:GetColor('black', "gui")  , g:GetColor('white', "gui"),
             \ g:GetColor('black', "cterm"), g:GetColor('white', "cterm")]

let s:N3  =  [ g:GetColor('gray', "gui")   , g:GetColor('base2', "gui"),
             \ g:GetColor('gray', "cterm") , g:GetColor('base2', "cterm")]

let g:airline#themes#fx#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#fx#palette.normal_modified = { 
    \ 'airline_c' : [ g:GetColor('purple','gui')   , g:GetColor('base3', 'gui'), 
    \                 g:GetColor('purple','cterm') , g:GetColor('base3', 'cterm'), '' ],
    \ }
"}}}

" Insert Mode " {{{

let s:I1  =  [ '#006000' , g:GetColor('green', "gui"),
             \ '22' , g:GetColor('green', "cterm")]

let s:I2  =  [ g:GetColor('black', "gui")   , g:GetColor('white', "gui"),
             \ g:GetColor('black', "cterm") , g:GetColor('white', "cterm")]

let s:I3  =  [ g:GetColor('gray', "gui")   , g:GetColor('base2', "gui"),
             \ g:GetColor('gray', "cterm") , g:GetColor('base2', "cterm")]

let g:airline#themes#fx#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

let g:airline#themes#fx#palette.insert_modified = {
    \ 'airline_c' : [ g:GetColor('green', "gui")   , g:GetColor(&background == 'light' ? 'base2' : 'gray', "gui"),
    \                 g:GetColor('green', "cterm") , g:GetColor(&background == 'light' ? 'base2' : 'gray', "cterm"), '' ],
    \ }

let g:airline#themes#fx#palette.insert_paste = {
    \ 'airline_c' : [ g:GetColor('red', "gui")   , g:GetColor('white', "gui"),
    \                 g:GetColor('red', "cterm") , g:GetColor('white', "cterm"), '' ],
    \ }

" }}}

" Replace Mode " {{{

let g:airline#themes#fx#palette.replace = copy(g:airline#themes#fx#palette.insert)
let g:airline#themes#fx#palette.replace_modified  = g:airline#themes#fx#palette.insert_modified

" }}}

" Visual Mode " {{{

let s:V1  =  [ s:white[0], g:GetColor('red', "gui"),
             \ s:white[1], g:GetColor('red', "cterm")]

let s:V2  =  [ g:GetColor('black', "gui")   , g:GetColor('white',  "gui"),
             \ g:GetColor('black', "cterm") , g:GetColor('white',  "cterm")]

let s:V3  =  [ g:GetColor('gray',  "gui")   , g:GetColor('base2', "gui"),
             \ g:GetColor('gray',  "cterm") , g:GetColor('base2', "cterm")]

let g:airline#themes#fx#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#fx#palette.visual_modified = {
    \ 'airline_c' : [ g:GetColor('red', "gui")  , g:GetColor(&background == 'light' ? 'base2' : 'gray', "gui"),
    \                 g:GetColor('red', "cterm"), g:GetColor(&background == 'light' ? 'base2' : 'gray', "cterm"), ''],
    \ }

" }}}

" Inactive Mode " {{{
let s:IA1 = [ g:GetColor('black', "gui")   , g:GetColor('white', "gui"), 
            \ g:GetColor('black', "cterm") , g:GetColor('white', "cterm"), '']

let s:IA2 = [ g:GetColor('white', "gui")   , g:GetColor('gray', "gui"),
            \ g:GetColor('white', "cterm") , g:GetColor('gray', "cterm"), '']

let s:IA3 = [ g:GetColor('gray',  "gui")   , g:GetColor('base2', "gui"),
            \ g:GetColor('gray',  "cterm") , g:GetColor('base2', "cterm"), '']

let g:airline#themes#fx#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

" }}}

" Set warnings "{{{
let g:airline#themes#fx#palette.normal.airline_warning = [
     \ g:GetColor('white', "gui")   , g:GetColor('red2', "gui"),
     \ g:GetColor('white', "cterm") , g:GetColor('red2', "cterm")
     \ ]

let g:airline#themes#fx#palette.normal_modified.airline_warning =
    \ g:airline#themes#fx#palette.normal.airline_warning

let g:airline#themes#fx#palette.insert.airline_warning =
    \ g:airline#themes#fx#palette.normal.airline_warning

let g:airline#themes#fx#palette.insert_modified.airline_warning =
    \ g:airline#themes#fx#palette.normal.airline_warning

let g:airline#themes#fx#palette.visual.airline_warning =
    \ g:airline#themes#fx#palette.normal.airline_warning

let g:airline#themes#fx#palette.visual_modified.airline_warning =
    \ g:airline#themes#fx#palette.normal.airline_warning

let g:airline#themes#fx#palette.replace.airline_warning =
    \ g:airline#themes#fx#palette.normal.airline_warning

let g:airline#themes#fx#palette.replace_modified.airline_warning =
    \ g:airline#themes#fx#palette.normal.airline_warning

let g:airline#themes#fx#palette.accents = {
    \ 'red' : [ g:GetColor('red2','gui'), '', g:GetColor('red2','cterm'), '' ]
    \  }

" }}}
