call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree'
Plug 'Shougo/deoplete.nvim'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'davidhalter/jedi-vim'
Plug 'carlitux/deoplete-ternjs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'mxw/vim-jsx'
Plug 'alampros/vim-styled-jsx'
call plug#end()

" mappings
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-p> :FZF<CR>

inoremap jk <Esc>
inoremap kj <Esc>
inoremap jj <Esc>

nnoremap <Leader><space> :noh<CR>

" settings
set hidden
set smartcase
set hlsearch
set incsearch

set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set number

set background=dark

let mapleader = ","

" plugin settings
let g:airline_powerline_fonts = 1
