" General
filetype indent on
filetype on
filetype plugin on
set modeline
set mouse=c
set nocompatible
set nolist
set ruler
syntax on

" activate editorconfig
packadd! editorconfig

" Colors
set t_Co=256
"colorscheme koehler
set background=dark

" Indentation
set autoindent
"set expandtab
set nocopyindent
set nowrap
set shiftwidth=4
set showmatch
set smartindent
set smarttab
set tabstop=4
set textwidth=132

" Search
set incsearch
set smartcase

" Shortcuts
set pastetoggle=<F12>
nmap <F11> 1G-G
imap <F11> <ESC> 1G=Ga
map <F5> :set spell! spelllang=en_us

" Functions
:command! Hsort call setline('.', join( sort( split( getline('.'), '\s\+') ), ' ') )
:command! -nargs=0 RemoveComments g/\v^(#|[[:space:]].+#|$)/d

" Powerline configuration
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" Always display the status line
set laststatus=2

" Ensure colors and encoding are set correctly
set encoding=utf-8
set t_Co=256
