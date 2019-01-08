set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugins on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'jasoncodes/ctrlp-modified.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Pathogen
execute pathogen#infect()

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

" Have split windows open more naturally
set splitbelow
set splitright

syntax on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Filetype Specifics
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable filetype for command below
filetype on
" generally want this, but also required for Vundle
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
autocmd! bufwritepost vimrc source ~/dotfiles/vimrc

set ignorecase "Ignore case when searching
set smartcase

set textwidth=80

colorscheme zellner
set background=dark

" set ctag home for keyword completion
set tags=./tags;/


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Remappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" So I can use J to move between windows
nnoremap <C-J> J

" Move between split windows
nnoremap J <C-W><C-J>
nnoremap K <C-W><C-K>
nnoremap H <C-W><C-H>
nnoremap L <C-W><C-L>

" Wrapped line movement
nnoremap j gj
nnoremap k gk

" Make a shortcut for the file explorer
nnoremap - :E<CR>

" Shortcuts for CtrlP Modified
nnoremap <C-m> :CtrlPModified<CR>
nnoremap <C-b> :CtrlPBranchModified<CR>
nnoremap <C-B> :CtrlPBranch<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CTag extensions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Turn autocompletion plugin on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neocomplcache_enable_at_startup = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Gundo Remap
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" I'm disabling this since I don't really use it
" nnoremap <C-T> :GundoToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => For CTRL-P
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_regexp = 1
let g:ctrlp_max_depth = 40
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Whitespace highlighting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\| \+\ze\t/

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Navigate pex files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufReadCmd *.pex call zip#Browse(expand("<amatch>"))
