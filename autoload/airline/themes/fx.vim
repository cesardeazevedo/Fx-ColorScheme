" Fx for Airline plugin
let g:airline#themes#fx#palette = {}

" Normal Mode "{{{

let s:N1  =  [ g:getColor('white', "gui")  , g:getColor('purple2', "gui"),
             \ g:getColor('white', "eterm"), g:getColor('purple2', "cterm")]

let s:N2  =  [ g:getColor('black', "gui")  , g:getColor('white', "gui"),
             \ g:getColor('black', "cterm"), g:getColor('white', "cterm")]

let s:N3  =  [ g:getColor('gray', "gui")   , g:getColor('base2', "gui"),
             \ g:getColor('gray', "cterm") , g:getColor('base2', "cterm")]

let g:airline#themes#fx#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#fx#palette.normal_modified = { 
    \ 'airline_c' : [ g:getColor('purple','gui'), g:getColor('base3','gui'), s:N1[2], s:N1[3], ''  ],
    \ }

"}}}

" Insert Mode " {{{

let s:I1  =  [ g:getColor('black', "gui")   , g:getColor('green', "gui"),
             \ g:getColor('black', "cterm") , g:getColor('green', "cterm")]

let s:I2  =  [ g:getColor('black', "gui")   , g:getColor('white', "gui"),
             \ g:getColor('black', "cterm") , g:getColor('white', "cterm")]

let s:I3  =  [ g:getColor('gray', "gui")   , g:getColor('base2', "gui"),
             \ g:getColor('gray', "cterm") , g:getColor('base2', "cterm")]

let g:airline#themes#fx#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

let g:airline#themes#fx#palette.insert_modified = {
    \ 'airline_c' : [ g:getColor('green', "gui")   , g:getColor('gray', "gui"),
    \                 g:getColor('green', "cterm") , g:getColor('gray', "cterm"), '' ],
    \ }

let g:airline#themes#fx#palette.insert_paste = {
    \ 'airline_c' : [ g:getColor('red', "gui")   , g:getColor('white', "gui"),
    \                 g:getColor('red', "cterm") , g:getColor('white', "cterm"), '' ],
    \ }

" }}}

" Replace Mode " {{{

let g:airline#themes#fx#palette.replace = copy(g:airline#themes#fx#palette.insert)
let g:airline#themes#fx#palette.replace_modified  = g:airline#themes#fx#palette.insert_modified

" }}}

" Visual Mode " {{{

let s:V1  =  [ g:getColor('white', "gui")   , g:getColor('red', "gui"),
             \ g:getColor('white', "cterm") , g:getColor('red', "cterm")]

let s:V2  =  [ g:getColor('black', "gui")   , g:getColor('white',  "gui"),
             \ g:getColor('black', "cterm") , g:getColor('white',  "cterm")]

let s:V3  =  [ g:getColor('gray',  "gui")   , g:getColor('base2', "gui"),
             \ g:getColor('gray',  "cterm") , g:getColor('base2', "cterm")]

let g:airline#themes#fx#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#fx#palette.visual_modified = {
    \ 'airline_c' : [ g:getColor('red', "gui")  , g:getColor('gray', "gui"),
    \                 g:getColor('red', "cterm"), g:getColor('gray', "cterm"), ''],
    \ }

" }}}

" Inactive Mode " {{{
let s:IA1 = [ g:getColor('black', "gui")   , g:getColor('white', "gui"), 
            \ g:getColor('black', "cterm") , g:getColor('white', "cterm"), '']

let s:IA2 = [ g:getColor('white', "gui")   , g:getColor('gray', "gui"),
            \ g:getColor('white', "cterm") , g:getColor('gray', "cterm"), '']

let s:IA3 = [ g:getColor('gray',  "gui")   , g:getColor('base2', "gui"),
            \ g:getColor('gray',  "cterm") , g:getColor('base2', "cterm"), '']

let g:airline#themes#fx#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

" }}}

" Set warnings "{{{
let g:airline#themes#fx#palette.normal.airline_warning = [
     \ g:getColor('white', "gui")   , g:getColor('red2', "gui"),
     \ g:getColor('white', "cterm") , g:getColor('red2', "cterm")
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
    \ 'red' : [ g:getColor('red2','gui'), '', g:getColor('red2','cterm'), '' ]
    \  }

" }}}
