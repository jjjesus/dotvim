set nocompatible
let mapleader=','
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
" Helps with object-oriented Lua (colon functions)
set iskeyword+=:
"
set ruler
set showcmd
set wildmenu
set cursorline
set laststatus=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set guifont=Liberation\ Mono\ 11


" When exit, don't clear screen
"
set t_ti=
set t_te=

let Tlist_WinWidth = 50

set visualbell

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
" Trim trailing whitespace
autocmd FileType c,cpp,java,php,xml autocmd BufWritePre <buffer> :%s/\s\+$//e
"
" Type 'normal gg=G' to reformat indentation
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
map <C-F8> :TagbarToggle<CR>
map <C-F7> :ccl<CR>

map <Leader>p "+gP 

map <Leader>n :tabnew<CR>
map <Leader>j :tabprev<CR>
map <Leader>k :tabnext<CR>

