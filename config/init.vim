call plug#begin('~/.vim/plugged')
 Plug 'VundleVim/Vundle.vim'
 Plug 'hashivim/vim-terraform'
 Plug 'arcticicestudio/nord-vim'
 Plug 'itchyny/lightline.vim'
 Plug 'airblade/vim-gitgutter'
 Plug 'prettier/vim-prettier', { 'do': 'npm install' }


 " NerdTree
 Plug 'preservim/nerdtree'
 Plug 'ryanoasis/vim-devicons'
 Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
 Plug 'Xuyuanp/nerdtree-git-plugin'
 """""
call plug#end()
"""""


"airblade/vim-gitgutter
let g:gitgutter_enabled = 1
set updatetime=100
"

"hashivim/vim-terraform
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_fmt_on_save=1
"""""

"arcticicestudio/nord-vim
colorscheme nord
"

" itchyny/lightline.vim
let g:lightline = {'colorscheme': 'nord'}
"

set number
