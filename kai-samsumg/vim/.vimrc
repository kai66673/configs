set number
set expandtab
set tabstop=4

set hlsearch
set incsearch
syntax on

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'valloric/youcompleteme'
Plug 'jiangmiao/auto-pairs'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

call plug#end()

" colorscheme gruvbox
" set background=none

" Mappings
map <C-n> :NERDTreeToggle<CR>

