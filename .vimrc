"General configs/ UI
"set number        "shows number of lines
set relativenumber "shows relative order of lines
syntax on         "enables syntax highlighting
syntax enable     "syntax processing
set tabstop=4 	  "makes tabs 4 spaces visually
set softtabstop=4 "number of visual space for editing
set cursorline    "shows which line cursor is on
set showmatch     "highlights matching () and {}
set ruler         "lets you see what line cursor is on plus column
set shiftwidth=4  "when indenting with '>>', it is four spaces
set clipboard=unnamedplus
let g:python_highlight_all = 1
filetype indent on " load filetype-specific indent files and detect different languages
set statusline=
"set expandtab     "tabs are spaces, competes with softtabstop

"For Pathogen Package Manager
execute pathogen#infect()

"Theme
set t_Co=256
colorscheme monokai 
set background=dark
" These are for the onehalf theme
"let g:airline_solarized_bg='dark'
let g:airline_theme='onehalfdark'
let g:monokai_termcolors=256

"Search configs
set incsearch     " search as characters are entered
set hlsearch      "searches are highlighted

" Remaps
" noremap <silent> <C-L> :nohlsearch<CR><C-L>
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

" Air line configs
" old vim-powerline symbols
" air-line
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀' 
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
