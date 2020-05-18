set encoding=UTF-8
" Set leader
let mapleader = ","

" Remap ; to :
nmap ; :

" Enable filetype plugins
filetype plugin on
filetype indent on

" Enable auto reload file if it is changed from outside
set autoread

" Use :W to sudo save
command W w !sudo tee % > /dev/null

" Completion
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Command line completion
set wildmenu

" Autocompletion
set completeopt=longest,menuone
"" Remove newline after pressing enter
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"" Always select an item after pressing C-N
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

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

" Split direction
set splitbelow
set splitright

" Move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Auto closing
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

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
            \ 'colorscheme': 'jellybeans',
            \ }
"" Jellybeans Theme
set background=dark
let g:jellybeans_use_term_italics=1
colorscheme jellybeans
"" Markdown preview
let g:preview_markdown_parser='mdr'
let g:preview_markdown_vertical=1
"" Vim-Flake8
autocmd BufWritePost *.py call flake8#Flake8()
"" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
"" UltiSnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:ultisnips_python_style='google'
