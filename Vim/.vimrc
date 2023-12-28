"set nocompatible              " be iMproved, required
"filetype off                  " required

" ----------------------------
" Meine eigenen Einstellungen
" ----------------------------
set number
syntax on

filetype plugin indent on
set ts=2 sts=2 sw=2 et ai si
set rnu

set clipboard=unnamed

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set background=dark "verwendet dark theme
" ----------------------------
" ENDE meiner Einstellungen
" ----------------------------

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.fzf
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'preservim/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'npm ci' }
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim' 
call vundle#end()            " required
filetype plugin indent on    " required
autocmd vimenter * ++nested colorscheme gruvbox
