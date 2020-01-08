set encoding=UTF-8
" Set leader
let mapleader = ","

" Enable filetype plugins
filetype plugin on
filetype indent on

" Enable auto reload file if it is changed from outside
set autoread

" Use :W to sudo save
command W w !sudo tee % > /dev/null

" Command line completion
set wildmenu

" Cursor position
set number
set ruler

" Search settings
"" Ignore case only when pattern contains lowercase letters only 
set ignorecase
set smartcase
"" Highlight search results
set hlsearch
"" Show results while typing
set incsearch
"" Regex magic
set magic

" Show matching brackets
set showmatch

" Syntax highlight
syntax enable

" Set unix style newline
set ffs=unix

" Persistent undo
set undodir=~/.vim/undodir
set undofile

" Disable backup
set nobackup 
set noswapfile

" Use space instead of tab
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

" Move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Plugins
execute pathogen#infect()
"" latex live preview
let g:livepreview_previewer='zathura'
let g:livepreview_engine='xelatex'
let g:vimtex_view_method='zathura'
"" Lightline 
set laststatus=2
set noshowmode
let g:lightline = {
            \ 'colorscheme': 'solarized',
            \ }
"" Solarized Theme
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
