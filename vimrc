set nocompatible
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
"
syntax enable
set nowrap
set hlsearch
set backspace=indent,eol,start
let loaded_matchparen = 1
set tags=./tags;/
"
set ruler
set showcmd
set wildmenu
set cursorline
set laststatus=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
"set guifont=Lucida_Console:h11

" When exit, don't clear screen
"
set t_ti=
set t_te=

let Tlist_WinWidth = 50


"
" Indentation
"
set sts=4
set ts=4
set shiftwidth=4
set autoindent
set smartindent
set cindent
set expandtab
"
" Colors
"
set background=dark
let g:solarized_termtrans=0
colorscheme solarized
"
"
autocmd VimEnter * if !argc() | NERDTree | endif
set autochdir

set guioptions-=T "Remove GUI toolbar icons

function! SuperCleverTab()
    if strpart(getline('.'), 0, col('.') - 1) =~ '^\s*$'
        return "\<Tab>"
    else
        if &omnifunc != ''
            return "\<C-X>\<C-O>"
        elseif &dictionary != ''
            return "\<C-K>"
        else
            return "\<C-N>"
        endif
    endif
endfunction


inoremap <Tab> <C-R>=SuperCleverTab()<cr>
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <C-F11> :TlistToggle<CR>
map <C-F10> :NERDTreeToggle<CR>
map <C-F9> :cw<CR>


