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
Plug 'python-mode/python-mode'
Plug 'davidhalter/jedi-vim'
Plug 'flazz/vim-colorschemes'

" CtrlK with depencies not works ((
" Plug 'vim-scripts/L9'
" Plug 'FuzzyFinder'
" Plug 'SkidanovAlex/CtrlK'

call plug#end()

" colorscheme gruvbox
" colorscheme strange
" colorscheme mango
" colorscheme elise
" colorscheme eclipse
colorscheme SlateDark
set background=light

let g:ctrlk_clang_library_path="/home/kai/qtcreator-4.5.0/lib/qtcreator"

" YCM options
let g:ycm_confirm_extra_conf=0
let g:ycm_goto_buffer_command = 'same-buffer'
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'

" Disable rope-autocomplete (jedi-vim used instead)
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

" Documentation
let g:pymode_doc = 0
let g:pymode_doc_key = 'K'

" python linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore="E501,W601,C0110"
let g:pymode_lint_write = 1

" Breakpoints
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" python syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" autofold disabling, max length column set to 120 symbols
let g:pymode_folding = 0
let g:pymode_options_max_line_length =120

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
nmap <C-k> :call CtrlKNavigateSymbols()<CR>

let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

