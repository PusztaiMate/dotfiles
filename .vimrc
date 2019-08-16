set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"general
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ervandew/supertab'

"python specific
Plugin 'Vimjas/vim-python-pep8-indent'
"Plugin 'vim-syntastic/syntastic'
Plugin 'plytophogy/vim-virtualenv'
Plugin 'dense-analysis/ale'
Plugin 'deoplete-plugins/deoplete-jedi'

"js
Plugin 'Shougo/deoplete.nvim'
Plugin 'othree/yajs.vim'
Plugin 'mxw/vim-jsx'

"colorschemes
Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'
Plugin 'joshdick/onedark.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
syntax on

"plugin options
"SimpylFold
let g:SimpylFold_docstring_preview=1
"NerdTree
let NERDTreeIgnore=['\.pyc$', '\~$']
let g:deoplete#enable_at_startup = 1
let g:ale_fixers = {
\    'javascript': ['eslint'],
\    'vue': ['eslint'],
\    'scss': ['prettier']
\}
let g:ale_fix_on_save = 1
let g:ale_linters = {
\   'python': ['flake8'],
\   'javascript': ['eslint'],
\   'vue': ['eslint']
\}

"python specific
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set encoding=utf-8

"remaps
inoremap jw <Esc>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <space> zA

"set belloff=all
set background=dark
let g:solarized_termcolors = 256
set nu
set wildmenu
hi Normal ctermbg=None
set scrolloff=8
colorscheme onedark

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
noremap <F5> :set list!<CR>


