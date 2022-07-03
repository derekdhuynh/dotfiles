"General configs/ UI
set nocompatible  "not compatible with vim
set relativenumber "shows relative order of lines
syntax on         "enables syntax highlighting, turn off if using treesitter
syntax enable     "syntax processing
set cursorline    "shows which line cursor is on
set showmatch     "highlights matching () and {}
set ruler         "lets you see what line cursor is on plus column
let g:python_highlight_all = 1
filetype indent on " load filetype-specific indent files and detect different languages
set expandtab     "tabs are spaces, competes with softtabstop
set mouse=a       "allows mouse scroll
set clipboard=unnamedplus
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

"Changing indentation based on file type
autocmd Filetype python setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype java setlocal tabstop=2 shiftwidth=2 softtabstop=4
autocmd Filetype c setlocal tabstop=2 shiftwidth=2 softtabstop=4
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=4
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=4

"Changing indentation based on file type
autocmd Filetype python setlocal tabstop=4 shiftwidth=4
autocmd Filetype java setlocal tabstop=2 shiftwidth=2

"For Pathogen Package Manager
"execute pathogen#infect()

" If I wanted LSP
"lua << EOF
"require'lspconfig'.pyright.setup{}
"EOF

"Theme (LEGACY)
"set termguicolors   "for true color
"set t_Co=256       "for terms with only 256 colors

"Theme
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors "for true color
  "set t_Co=256       "for terms with only 256 colors
endif

" All my homies hate monokai
"let g:sonokai_enable_italic = 1
"let g:sonokai_disable_italic_comment = 1
"colorscheme sonokai 
"set background=dark
"let g:airline_theme='sonokai'
"set noshowmode

"tree-sitter syntax highlighting
"lua <<EOF
"require'nvim-treesitter.configs'.setup {
"  --ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
"  --ignore_install = { "javascript" }, -- List of parsers to ignore installing
"  highlight = {
"    enable = true,              -- false will disable the whole extension
"    --disable = { "c", "rust" },  -- list of language that will be disabled
"  },
"  incremental_selection = {
"    enable = true,
"    keymaps = {
"      init_selection = "gnn",
"      node_incremental = "grn",
"      scope_incremental = "grc",
"      node_decremental = "grm",
"    },
"  },
"}
"EOF

"Search configs
set incsearch     " search as characters are entered
set hlsearch      "searches are highlighted
set ignorecase    "Ignore case when searching
set smartcase     "When searching try to be smart about cases

" Remembers last cursor position
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

"" unicode symbols
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

" autorun python scripts with F5
autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3.7' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python3.7' shellescape(@%, 1)<CR>

" Really annoying issue where I can't save with 'W'
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))

" Same for 'Wq'
cnoreabbrev <expr> Wq ((getcmdtype() is# ':' && getcmdline() is# 'Wq')?('wq'):('Wq'))
