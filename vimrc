" Spacing
set vb t_vb=
set backspace=indent,eol,start
set incsearch
set scrolloff=3
set tabstop=2
set expandtab
set shiftwidth=2
set ruler
set wrap

" Linebreak
set lbr

" Highlight search
set hls

" Smart indent
set si

syntax on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Filetype Specifics
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable filetype for command below
filetype on
filetype plugin indent on

" Use c indentation style and syntax highlighting for c, c++, and c0 files
autocmd FileType c,cpp :set cindent
autocmd FileType c,cpp :setf c

au BufEnter *.c0 setf c
au BufEnter *.c0 set cindent

" scala configs
au BufRead,BufNewFile *.scala set filetype=scala 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Set to auto read when a file is changed from the outside
set autoread

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrc

set ignorecase "Ignore case when searching
set smartcase

set textwidth=80

colorscheme zellner
"set background=dark

" set ctag home for keyword completion
set tags=./tags;/

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Remappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Move between split windows
map <A-J> <C-W>j<C-W>_
map <A-K> <C-W>k<C-W>_

" So I can use J to move between tabs
nnoremap <C-J> J

" Move between tabs
nnoremap J gT
nnoremap K gt

" Wrapped line movement
nnoremap j gj
nnoremap k gk

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CTag extensions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => For CTRL-P
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_regexp = 1
let g:ctrlp_max_depth = 40
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files']
