" Table of Contents
" 1  .................... General
" 2  .................... UI
" 3  .................... Mappings
" 4  .................... Plugin Related
"
"
let leader=","
let mapleader=","

execute pathogen#infect()

filetype plugin on
filetype indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1. General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set number              " set line numbers

set smartindent         " autoindent on newlines
set showcmd             " show command in bottom bar
set showmatch
set lazyredraw

set autoindent          " copy indentation from previous lines
set linebreak           " word wrap
set backspace=indent,eol,start

set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set nobackup            " disable vim backups
set nowb
set noswapfile


" Set different tabs for Python
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

function! TrimWhitespace()
    let l:save = winsaveview()
    %s/\t/    /e
    %s/\s\+$//e
    call winrestview(l:save)
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 2. UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set background=dark
colorscheme hybrid_reverse
syntax enable           " enable syntax processing

set noerrorbells
set novisualbell

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 3. Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

inoremap jk <esc>

noremap <leader>w :call TrimWhitespace()<CR>

map <leader>s :source ~/.vimrc<CR>
map <leader>f :NERDTreeFocus<CR>
" map <C-n> :NERDTreeToggle<CR>
map <leader>n :NERDTreeToggle<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 4. Plugin Related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:NERDSpaceDelims = 1            " Add one space to start line comment
let g:javascript_plugin_jsdoc = 1    " syntax highlighting for JSDocs


