" General settings
set nocompatible
set number
set clipboard=unnamedplus
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
syntax on
filetype plugin indent on

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'vimsence/vimsence'

call plug#end()

" Plugin settings
" Imports: let g:vimsense_client_id = ''. 
" This is used to set up vim as a discord status i mightcreate
" a tutorial on how to set this up at some point.

source $HOME/.dotfiles_private/vim/private.vim
let g:vimsence_small_text = 'Editing in Vim'
let g:vimsence_small_image = 'vim_icon'  
