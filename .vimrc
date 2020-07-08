"General configs/ UI
"set number        "shows number of lines
set nocompatible    "not compatible with vi
set relativenumber "shows relative order of lines
syntax on         "enables syntax highlighting
syntax enable     "syntax processing
set tabstop=4 	  "makes tabs 4 spaces visually
set softtabstop=4 "number of visual space for editing
set cursorline    "shows which line cursor is on
set showmatch     "highlights matching () and {}
set ruler         "lets you see what line cursor is on plus column
set shiftwidth=4  "when indenting with '>>', it is four spaces
let g:python_highlight_all = 1
filetype indent on " load filetype-specific indent files and detect different languages
set expandtab     "tabs are spaces, competes with softtabstop
set mouse=a       "allows mouse scroll
"set clipboard=unnamedplus

"For Pathogen Package Manager
execute pathogen#infect()

"Theme
set termguicolors   "for true color 
"set t_Co=256       "for terms with only 256 colors
colorscheme monokai 
set background=dark
let g:airline_theme='onehalfdark'
let g:monokai_termcolors=256

"Search configs
set incsearch     " search as characters are entered
set hlsearch      "searches are highlighted
set ignorecase    "Ignore case when searching
set smartcase     "When searching try to be smart about cases

"Remembers last cursor position
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif

" Tab Remaps
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
" Change to h and l when not using Mac keyboard
nnoremap <silent> <A-˙> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>   
nnoremap <silent> <A-¬> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

" Switch between buffers
set switchbuf=usetab
nnoremap <F8> :sbnext<CR>
nnoremap <S-F8> :sbprevious<CR>

" Air line configs
" old vim-powerline symbols
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀' 
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = 'l'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
