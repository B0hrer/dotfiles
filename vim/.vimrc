" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'

call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-css-color'
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

let g:dracula_colorterm = 0
set t_Co=256
colorscheme dracula

let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ }

syntax on
set number
let g:powerline_pycmd="py3"
:set laststatus=2
