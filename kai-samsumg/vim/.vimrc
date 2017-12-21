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
Plug 'majutsushi/tagbar'

call plug#end()

colorscheme gruvbox
set background=dark

" YCM options
let g:ycm_confirm_extra_conf=0
let g:ycm_goto_buffer_command = 'same-buffer'
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'

function YcmSGD()
    split | YcmCompleter GoToDefinition
endfunction

" Mappings
map <C-n> :NERDTreeToggle<CR>
nnoremap <F5> :buffers<CR>:buffer<Space>
nnoremap <F2> :YcmCompleter GoTo<CR>
nnoremap <F3> :call YcmSGD()<CR>
nmap <F8> :TagbarToggle<CR>

function! ToggleSyntax()
    if exists("g:syntax_on")
        syntax off
    else
        syntax enable
    endif
endfunction

iabbrev <silent> CWD <C-R>=getcwd()<CR>
                                      
nmap <silent>  ;s  :call ToggleSyntax()<CR>
nmap <silent>  ;n  :set invnumber<CR>

