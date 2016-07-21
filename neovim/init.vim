
call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'scrooloose/syntastic'
Plug 'bling/vim-airline'
Plug 'othree/yajs.vim'
Plug 'gavocanov/vim-js-indent'
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-grepper'
Plug 'rking/ag.vim'
Plug 'tpope/vim-repeat'
Plug 'morhetz/gruvbox'
Plug 'airblade/vim-gitgutter'
Plug 'ElmCast/elm-vim'

call plug#end()

filetype plugin indent on

set background=dark
colorscheme gruvbox

set background=dark
set number
syntax on

let g:syntastic_javascript_checkers = ['eslint']
let g:jsx_ext_required = 0

set expandtab
set ts=2
set sw=2

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:airline_powerline_fonts = 1

