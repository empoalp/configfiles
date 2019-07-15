
call plug#begin('~/.config/nvim/plugged')

let g:ale_completion_enabled = 1

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
"Plug 'scrooloose/syntastic'
Plug 'bling/vim-airline'
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'jparise/vim-graphql'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-grepper'
Plug 'rking/ag.vim'
Plug 'tpope/vim-repeat'
Plug 'airblade/vim-gitgutter'
"Plug 'ElmCast/elm-vim'
"Plug 'tpope/vim-fireplace'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'sbdchd/neoformat'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'w0rp/ale'
Plug 'leafgarland/typescript-vim'
"Plug 'Quramy/tsuquyomi'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" Color themes
Plug 'morhetz/gruvbox'

call plug#end()

filetype plugin indent on

set termguicolors
colorscheme gruvbox
set background=dark

set number
set list
syntax on

let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']

"let g:syntastic_javascript_checkers = ['eslint']
let g:jsx_ext_required = 0

set expandtab

set ts=2
set sw=2

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:airline_powerline_fonts = 1

let g:ale_linters = {
\  'javascript': ['eslint'],
\}

let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'typescript': ['prettier'],
\   'css': ['prettier'],
\}
