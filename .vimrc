set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'ervandew/supertab'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'plytophogy/vim-virtualenv'
Plugin 'jiangmiao/auto-pairs'
Plugin 'euclio/vim-nocturne'
Plugin 'vim-scripts/harlequin'
Plugin 'vim-scripts/CSApprox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/fonts'
Plugin 'powerline/powerline'


" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
syntax on

"plugin options
"SimpylFold
let g:SimpylFold_docstring_preview=1
"NerdTree
let NERDTreeIgnore=['\.pyc$', '\~$']

"python specific
au BufNewFile,BufRead *.py:
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

nnoremap <space> za

"set belloff=all
colorscheme gruvbox
let g:airline_theme='dark'
set nu
set wildmenu
hi Normal ctermbg=None
set scrolloff=4

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
noremap <F5> :set list!<CR>


"vim-airline-theme
let g:airline_theme=base16_ashes

"vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''

